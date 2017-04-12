function(){
	tabPanel("About",
		 HTML('
<br></br>
                <div style="clear: left;"><img src="https://s.gravatar.com/avatar/450f85ccf35a87cf1806fe3330af4877?s=80" alt="" style="float: left; margin-right:5px" /></div>
    <p>Erich Seamon<br/>
                PhD Student | University of Idaho<br/>
                <a href="http://erich.io" target="_blank">University page</a> |
                <a href="http://dmine.io" target="_blank">DMINE.io server</a> |
                <a href="https://pnwcirc.org" target="_blank">NOAA grant team - CIRC</a> |
                <a href="http://github.com/erichseamon", target="_blank">github</a>
                </p>'),


		HTML('
		
<p style="text-align:justify">This is a BETA data mining gradient boosting application, developed in Shiny.</p>

<p style="text-align:justify">Gradient boosting is a machine learning technique for regression and classification problems, which produces a prediction model in the form of an ensemble of weak prediction models, typically decision trees. It builds the model in a stage-wise fashion like other boosting methods do, and it generalizes them by allowing optimization of an arbitrary differentiable loss function. </p>

<p style="text-align:justify">The idea of gradient boosting originated in the observation by Leo Breiman that boosting can be interpreted as an optimization algorithm on a suitable cost function. Explicit regression gradient boosting algorithms were subsequently developed by Jerome H. Friedman simultaneously with the more general functional gradient boosting perspective of Llew Mason, Jonathan Baxter, Peter Bartlett and Marcus Frean . The latter two papers introduced the abstract view of boosting algorithms as iterative functional gradient descent algorithms. That is, algorithms that optimize a cost function over function space by iteratively choosing a function (weak hypothesis) that points in the negative gradient direction. This functional gradient view of boosting has led to the development of boosting algorithms in many areas of machine learning and statistics beyond regression and classification. </p>

		<p style="text-align:justify">This project is supported by NOAA thru the Climate Impacts Research Consortium, or CIRC (www.pnwcirc.org)</p>

		<p style="text-align:justify">Also, thanks to Matthew Leonawicz and the SNAP team in Alaska, for the code and structure for these applications.</p>'),

		fluidRow(
			column(4,
				strong('Other Climatic Process Models'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Random Forest Climatic Process Modeling", href="http://dmine.io:3838/random_forest_example/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Neural Network Modeling", href="http://shiny.snap.uaf.edu/RV_distributionsV2/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				br()
			),
			column(4,
				strong('Relevant research team sites'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Climate Impacts Research Consortium (CIRC)", href="http://pnwcirc.org/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a("Regional Approaches to Climate Change (REACCH)", href="http://reacchpna.org/", target="_blank"),HTML('</li>'),
				HTML('</ul>')),
				br()
			),
			column(5,
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
