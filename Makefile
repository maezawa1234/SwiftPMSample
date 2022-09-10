PRODUCT_NAME := Sample3
PROJECT_NAME := $(PRODUCT_NAME).xcodeproj
SCHEME_NAME := $(PRODUCT_NAME)

TEST_SDK := iphonesimulator
TEST_CONFIGURATION := Debug
TEST_PLATFORM := iOS Simulator
TEST_DEVICE ?= iPhone 11 Pro Max
TEST_OS ?= 13.6
TEST_DESTINATION := 'platform=${TEST_PLATFORM},name=${TEST_DEVICE},OS=${TEST_OS}'


.PHONY: generate-swiftgen-code
generate-swiftgen-code:
	mint run swiftgen config run

.PHONY: build-debug
build-debug:
	set -o pipefail \
&& xcodebuild \
-sdk ${TEST_SDK} \
-configuration ${TEST_CONFIGURATION} \
-scheme ${SCHEME_NAME} \
build \
| bundle exec xcpretty

.PHONY: test
test:
	set -o pipefail \
&& xcodebuild \
-sdk ${TEST_SDK} \
-configuration ${TEST_CONFIGURATION} \
-scheme ${SCHEME_NAME} \
-destination ${TEST_DESTINATION} \
clean test \
| bundle exec xcpretty --report html
