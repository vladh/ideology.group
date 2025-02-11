# © 2024 Vlad-Stefan Harbuz <vlad@vlad.website>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

.PHONY: publish

publish:
	rsync -Pvrthl --delete --exclude .git --info=progress2 . yavin:/srv/www/group.ideology
