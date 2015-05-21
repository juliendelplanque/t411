baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec
			project: 'ZincHTTPComponents' with: [ 
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: #stable;
					repository: 'http://mc.stfx.eu/ZincHTTPComponents'
				 ].
		spec project: 'NeoJSON' with: [ 
			spec
				className: #ConfigurationOfNeoJSON;
				versionString: #stable;
				repository: 'http://mc.stfx.eu/Neo'
			].
		spec package: #'T411' ].