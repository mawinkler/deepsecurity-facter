info = Facter::Core::Execution.execute('echo `/opt/ds_agent/dsa_query -c GetComponentInfo`').split(' ')
hash = {}
info.each_slice(2) { |k, v| hash[k.gsub(/:$/,'')] = v }

hash.each do |k, v|
  Facter.add("dsa_#{k.gsub(/\./,'_')}") do
    setcode { v }
  end
end

