Check-Script: nmu
Author: Jeroen van Wolffelaar <jeroen@wolffelaar.nl>
Abbrev: nmu
Standards-Version: 3.6.1
Type: source
Unpack-Level: 1
Needs-Info: debfiles, changelog-file
Info: This script checks if a source package is consequent about its NMU-ness.

Tag: orphaned-package-should-not-have-uploaders
Type: error
Info: Packages which their maintainer set to packages@qa.debian.org, i.e.
 orphaned packages, should not have uploaders. Properly adopt the package if
 you want to resume its maintainance.

Tag: qa-upload-has-incorrect-version-number
Type: warning
Info: A QA upload (uploading an orphaned package without adopting it) is
 always a maintainer upload: it should not get a NMU revision number.

Tag: source-nmu-has-incorrect-version-number
Type: warning
Info: A source NMU should have a Debian revision of '-x.x'. This is to prevent
 stealing version numbers from the maintainer (and the -x.x.x version numbers
 are reserved for binary-only NMU's).

Tag: maintainer-upload-has-incorrect-version-number
Type: warning
Info: A maintainer upload should have a Debian revision without dots.
 Revisions with dots are reserverd for Non-Maintainer Uploads (NMU's), if you
 do a maintainer-upload with dots, a potential NMU'er has problems choosing a
 correct version number.

Tag: changelog-should-mention-qa
Type: warning
Info: If this upload is to orphan this package, please mention this fact on
 the first line of the changelog. If this is a QA upload, please mention "QA
 (group) upload" there.

Tag: changelog-should-mention-nmu
Type: warning
Info: When you NMU a package, that fact should be mentioned on the first line
 in the changelog entry.
