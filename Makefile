.PHONY: site-dev site-prod publish-prod

site-dev:
	rm -rf public
	hugo -D

site-prod:
	rm -rf public
	hugo

publish-prod: site-prod
	rsync -Pvrthl --delete --exclude .git --info=progress2 public/ yavin:/srv/www/group.ideology
