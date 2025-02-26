.PHONY: site-dev site-prod publish

site-dev:
	rm -rf public
	hugo -D

site-prod:
	rm -rf public
	hugo

publish: site-prod
	rsync -Pvrthl --delete --exclude .git --info=progress2 public/ yavin:/srv/www/group.ideology
