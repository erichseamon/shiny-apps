function(){
	tabPanel("About",
		HTML('
		<p style="text-align:justify">This is a BETA data mining gradient boosting application, developed in Shiny.</p>
		
		<p style="text-align:justify">This project is supported by NOAA thru the Climate Impacts Research Consortium, or CIRC (www.pnwcirc.org)</p>

		<p style="text-align:justify">Also, thanks to Matthew Leonawicz and the SNAP team in Alaska, for the code and structure for these applications.</p>'),

		HTML('
		<div style="clear: left;"><img src="https://s.gravatar.com/avatar/450f85ccf35a87cf1806fe3330af4877?s=80" alt="" style="float: left; margin-right:5px" /></div>
		
    <p>Erich Seamon<br/>
		PhD Student1 | University of Idaho<br/>
		<a href="http://erich.io" target="_blank">university home page</a> | 
		<a href="http://dmine.io" target="_blank">development server</a> | 
		<a href="https://pnwcirc.org" target="_blank">NOAA grant team - CIRC</a> | 
		<a href="http://www.linkedin.com/in/seamon" target="_blank">Linkedin</a> <br/>
		<a href="http://github.com/erichseamon", target="_blank">github</a>
		</p>'),
		 
		fluidRow(
			column(4,
				strong('Other Climatic Process Models'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Random Forest Climatic Process Modeling", href="http://dmine.io:3838/random_forest_example", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Random variables: App tutorial part 2", href="http://shiny.snap.uaf.edu/RV_distributionsV2/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Random variables: App tutorial part 3", href="http://shiny.snap.uaf.edu/RV_distributionsV3/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Random variables: App tutorial part 4", href="http://shiny.snap.uaf.edu/RV_distributionsV4/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Sea ice and extreme wind events", href="http://shiny.snap.uaf.edu/sea_ice_winds/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Arctic sea ice extents and concentrations", href="http://shiny.snap.uaf.edu/sea_ice_coverage/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Coastal Alaska extreme temperatures and winds", href="http://shiny.snap.uaf.edu/temp_wind_events/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska weather station and CRU EDA", href="http://shiny.snap.uaf.edu/ak_station_cru_eda/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska and western Canada communities and climate", href="http://shiny.snap.uaf.edu/akcan_climate/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska  communities historical daily precipitation", href="http://shiny.snap.uaf.edu/ak_daily_precipitation/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Basic example app with image() plots", href="http://shiny.snap.uaf.edu/tree_rings/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Monty Hall gone wild", href="http://shiny.snap.uaf.edu/monty_hall/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				strong('Code'),
				p('Source code available at',
				a('GitHub', href="https://github.com/erichseamon", target="_blank")),
				br()
			),
			column(4,
				strong('Relevant research team sites'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Climate Impacts Research Consortium (CIRC)", href="http://pnwcirc.org", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Regional Approaches to Climate Change (REACCH)", href="http://reacchpna.org", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Random variables: App tutorial part 3", href="http://blog.snap.uaf.edu/2013/05/20/r-sampling-app-version-3/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Random variables: App tutorial part 4", href="http://blog.snap.uaf.edu/2013/05/20/r-sampling-app-version-4/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Sea ice and extreme wind events", href="http://blog.snap.uaf.edu/2013/09/09/r-shiny-app-arctic-sea-ice-concentration-and-extreme-winds/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Arctic sea ice extents and concentrations", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-sea-ice/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Coastal Alaska extreme temperatures and winds", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-extreme-events/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska weather station and CRU EDA", href="http://blog.snap.uaf.edu/2013/05/20/r-shiny-web-app-alaska-climate-data-eda/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska and western Canada communities and climate", href="http://blog.snap.uaf.edu/2013/07/16/r-shiny-app-alaskawestern-canada-communities-and-climate/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Alaska  communities historical daily precipitation", href="http://blog.snap.uaf.edu/2013/09/17/customizable-charts-with-r-base-graphics-and-shiny/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Gradient boosting example", href="http://blog.snap.uaf.edu/2013/06/20/r-shiny-app-stochastic-gradient-boosting-with-gbm/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Basic example app with image() plots", href="http://blog.snap.uaf.edu/2013/11/11/r-shiny-image-plots-no-frills-example/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Monty Hall gone wild", href="http://blog.snap.uaf.edu/2013/11/11/r-shiny-app-monty-hall-gone-wild/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				br()
			),
			column(4,
				strong('Other Resources'),
				p(HTML('<ul>'),
					HTML('<li>'),a('Coded in R', href="http://www.r-project.org/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a('Built with the Shiny package', href="http://www.rstudio.com/shiny/", target="_blank"),HTML('</li>'),
					HTML('<li>'),"Primary supporting R packages",HTML('</li>'),
					HTML('<ul>'),
						HTML('<li>'),a('gbm', href="http://cran.r-project.org/web/packages/gbm/index.html", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('ggplot2', href="http://ggplot2.org", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('plyr', href="http://cran.r-project.org/web/packages/plyr/index.html", target="_blank"),HTML('</li>'),
						HTML('<li>'),a('reshape2', href="http://cran.r-project.org/web/packages/reshape2/index.html", target="_blank"),HTML('</li>'),
					HTML('<ul>'),
				HTML('</ul>'))
			)
		),
		value="about"
	)
}
