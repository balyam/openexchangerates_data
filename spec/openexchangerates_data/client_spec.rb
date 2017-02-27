describe OpenexchangeratesData::Client do
  context 'Base API endpoint' do
    let(:openexchangerates_api_url) { 'https://openexchangerates.org/api/' }
    let(:client) { OpenexchangeratesData::Client.new }

    let(:responce) do
      {
        disclaimer: 'https://openexchangerates.org/terms/',
        license: 'https://openexchangerates.org/license/',
        timestamp: 1_449_877_801,
        base: 'USD',
        rates: {
          AED: 3.672538,
          AFN: 66.809999,
          ALL: 125.716501,
          AMD: 484.902502,
          ANG: 1.788575
        }
      }.to_json
    end

    before (:each) do
      stub_request(:get, "#{openexchangerates_api_url}#{current_path}")
        .with(query: { 'app_id' => ENV['EXCH_API_ID'] }).to_return(body: responce)
    end

    context "when requested list of 'currencies'" do
      let(:current_path) { 'currencies.json' }

      it "returns hash of currencie's list" do
        expect(client.currencies).to eql(responce)
      end
    end

    context "when requested 'latest' values" do
      let(:current_path) { 'latest.json' }

      it "returns hash of actual value's currencies" do
        expect(client.latest).to eql(responce)
      end
    end

    context 'when requested #historical' do
      let (:current_path) { 'historical/2017-01-17.json'}

      it "returns hash of value's currencies for specific day" do
        expect(client.historical('2017-01-17')).to eql(responce)
      end
    end
  end
end
