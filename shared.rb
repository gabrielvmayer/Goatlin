
RSpec.shared_context 'file.stored' do
  let(:file_uuid) { result.uuid }
  let(:file_stored) { Rails.root.join('tmp', account.id.to_s, file_uuid) }
  let(:file_contents) { File.read(file_stored) }
  after { `rm #{file_stored} > /dev/null 2>&1` }
  after { `rm -r #{File.dirname(file_stored)} > /dev/null 2>&1` }
end

RSpec.shared_context 'entries.for_audit' do
  let(:stan) { 0 }
