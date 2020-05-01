SHELL     := /usr/bin/env bash
TOP_DIR   := ..
MODEL_DIR := model
OUT_DIR   := ..
BIN_DIR   := ../bin
GENERATE  := $(BIN_DIR)/amazonka-gen
STYLISH   := $(BIN_DIR)/stylish-haskell

define version =
$(shell sed -n 's/^version: *\([0-9]*\.[0-9]*\.[0-9]\).*$$/\1/p' $(1))
endef

VERSION        = $(shell sed -n 's/^version: *\(.*\)$$/\1/p' amazonka-gen.cabal)
CORE_VERSION   = $(call version,$(TOP_DIR)/core/amazonka-core.cabal)
CLIENT_VERSION = $(call version,$(TOP_DIR)/gen/amazonka-gen.cabal)

MODELS_UNFILTERED = $(sort $(dir $(wildcard $(MODEL_DIR)/*/*)))

MODELS_EXCLUDED = \
  model/accessanalyzer/ \
  model/amplify/ \
  model/apigatewayv2/ \
  model/appconfig/ \
  model/appmesh/ \
  model/application-insights/ \
  model/backup/ \
  model/certificatemanager/ \
  model/certificatemanager-pca/ \
  model/chime/ \
  model/codeguru-reviewer/ \
  model/codeguruprofiler/ \
  model/codestar-connections/ \
  model/codestar-notifications/ \
  model/comprehendmedical/ \
  model/compute-optimizer/ \
  model/connectparticipant/ \
  model/dataexchange/ \
  model/datasync/ \
  model/detective/ \
  model/dlm/ \
  model/docdb/ \
  model/ebs/ \
  model/ec2-instance-connect/ \
  model/eks/ \
  model/elastic-inference/ \
  model/forecast/ \
  model/forecastquery/ \
  model/frauddetector/ \
  model/fsx/ \
  model/globalaccelerator/ \
  model/groundstation/ \
  model/iot1click-devices/ \
  model/iot1click-projects/ \
  model/iotevents-data/ \
  model/iotevents/ \
  model/iotsecuretunneling/ \
  model/iotsitewise/ \
  model/iotthingsgraph/ \
  model/kafka/ \
  model/kinesisanalyticsv2/ \
  model/kinesis-video-signaling/ \
  model/imagebuilder/ \
  model/kendra/ \
  model/lakeformation/ \
  model/license-manager/ \
  model/macie/ \
  model/managedblockchain/ \
  model/marketplace-catalog/ \
  model/mediaconnect/ \
  model/mediapackage-vod/ \
  model/mediatailor/ \
  model/migrationhub-config/ \
  model/neptune/ \
  model/networkmanager/ \
  model/outposts/ \
  model/personalize-events/ \
  model/personalize-runtime/ \
  model/personalize/ \
  model/pi/ \
  model/pinpoint-email/ \
  model/pinpoint-sms-voice/ \
  model/quicksight/ \
  model/qldb-session/ \
  model/qldb/ \
  model/ram/ \
  model/rds-data/ \
  model/robomaker/ \
  model/route53resolver/ \
  model/s3control/ \
  model/sagemaker-a2i-runtime/ \
  model/savingsplans/ \
  model/schemas/ \
  model/service-quotas/ \
  model/sesv2/ \
  model/securityhub/ \
  model/signer/ \
  model/sms-voice/ \
  model/sso-oidc/ \
  model/sso/ \
  model/synthetics/ \
  model/textract/ \
  model/transfer/ \
  model/wafv2/ \
  model/worklink/ \
  model/workmailmessageflow/ \
  model/alexaforbusiness/ \
  model/acm-pca/ \
  model/acm/ \
  model/glue/ \
  model/iot/ \
  model/medialive/ \
  model/mediapackage/ \
  model/pinpoint/ \

MODELS ?= $(filter-out $(MODELS_EXCLUDED), $(MODELS_UNFILTERED))

.PHONY: gen format $(GENERATE)

all: gen format

debug:
	@echo $(MODELS)

gen: $(MODEL_DIR) $(GENERATE)
	$(GENERATE) \
 --out=$(OUT_DIR) \
 --library-version=$(VERSION) \
 --client-version=$(CLIENT_VERSION) \
 --core-version=$(CORE_VERSION) \
 --annexes=annex \
 --configs=config \
 --templates=template \
 --static=static \
 --retry=$(MODEL_DIR)/_retry.json \
 $(addprefix --model=,$(MODELS))

format: $(STYLISH)
	@echo -e '\nFormatting...'
	@find \
	$(wildcard $(OUT_DIR)/amazonka-*/gen) \
	$(wildcard $(OUT_DIR)/amazonka-*/test/Test/AWS/Gen) \
	-type f \
	-name '*.hs' \
	-exec sh -c "printf ' -> %s\n' $1 {}; $(STYLISH) -i {}" \;

$(GENERATE): $(BIN_DIR)
	stack install --nix amazonka-gen

$(STYLISH): $(BIN_DIR)
	stack install --nix stylish-haskell

$(BIN_DIR):
	mkdir $@

clean:
	stack clean --nix
	rm -rf $(MODEL_DIR) $(OUT_DIR)/amazonka-*/gen

full-clean: clean
	rm -rf vendor $(GENERATE) $(STYLISH)

$(MODEL_DIR): vendor/botocore
	cp -rf vendor/botocore/botocore/data/ $@

vendor/botocore:
	git clone https://github.com/boto/botocore.git $@

.PHONY: audit

ACTUAL = $(sort $(addsuffix \\n,$(notdir $(wildcard config/*.json))))
EXPECT = $(sort $(addsuffix .json\\n,$(notdir $(patsubst %/,%,$(wildcard model/*/)))))

audit: $(MODEL_DIR)
	@diff -B -y <(echo -e $(ACTUAL)) <(echo -e $(EXPECT))
