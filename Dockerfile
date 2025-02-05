FROM ruby:3.2.2	
ENV RUBYGEMS_VERSION=3.3.22
# Set default locale for the environment	
ENV LC_ALL C.UTF-8	
ENV LANG en_US.UTF-8	
ENV LANGUAGE en_US.UTF-8	

LABEL "com.github.actions.name"="Build & Deploy to GitHub Pages"	
LABEL "com.github.actions.description"="Builds & deploys Jekyll to gh-pages branch of the same repository. "	
LABEL "com.github.actions.icon"="globe"	
LABEL "com.github.actions.color"="green"	

LABEL "repository"="http://github.com/kyledawson/jekyll-deploy-gh-pages"	

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
