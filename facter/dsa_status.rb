Facter.add(:dsa_status) do
  setcode do
    info = Facter::Core::Execution.execute('echo `/opt/ds_agent/dsa_query -c GetComponentInfo`').split(' ')
    hash = {}

    info.each_slice(2) { |k, v| hash[k.gsub(/:$/,'')] = v }
    hash
  end
end

