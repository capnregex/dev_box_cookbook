# # encoding: utf-8

unless os.windows?
  describe user('root'), :skip do
    it { should exist }
  end
end

describe port(22), :skip do
  it { is_expected.to be_listening }
end

