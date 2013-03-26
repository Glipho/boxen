class glipho::environment {
	include chrome
	include firefox
	include sublime_text_2
	include java
	include vagrant
	vagrant::plugin { 'vagrant-vmware-fusion':
		license => 'puppet:///modules/people/joe/licenses/fusion.lic',
	}

	vagrant::box { 'squeeze64/vmware_fusion':
		source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
	}
}
