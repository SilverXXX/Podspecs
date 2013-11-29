Pod::Spec.new do |s|
	s.name	= 'OEGridView'
	s.version = '1.0.0'
	s.summary = 'Core Animation based grid view'
	s.homepage = 'https://github.com/OpenEmu/OpenEmu/'
	s.authors = {'Enrique Osuna' => ''}
	s.source = { :git => 'git://github.com/SilverXXX/OEGridView.git' }
	s.source_files = '*.{h,m}'
  s.exclude_files= 'NSColor+OEAdditions.m'
	s.framework = 'QuartzCore', 'Cocoa', 'AppKit'
	s.requires_arc = true
  s.platform    = :osx

  s.subspec 'NoArc' do |sp|
    sp.source_files = 'NSColor+OEAdditions.m'
    sp.requires_arc = false
  end
=begin 
  s.post_install do |installer|
    project = installer.project
    project.objects.each do |obj|
      if obj.isa.to_s == "PBXBuildFile"
        fileRef = obj.file_ref
        file_name = fileRef.display_name
        if ["NSColor+OEAdditions.m"].include?(file_name)
          obj.settings.delete('COMPILER_FLAGS')
        end
      end
    end
  end
=end
end
