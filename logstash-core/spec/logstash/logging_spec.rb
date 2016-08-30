require "logstash/logger"

describe LogStash::Logger do
  [ :fatal, :error:, :warn, :info, :debug, :trace ] do |level|
    it "should respond to #{level}" do
      expect(subject).to respond_to(level)
    end
    it "should respond to #{level}?" do
      expect(subject).to respond_to("#{level}?".to_sym)
    end
  end
end
