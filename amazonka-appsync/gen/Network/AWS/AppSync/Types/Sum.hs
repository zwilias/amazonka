{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppSync.Types.Sum where

import Network.AWS.Prelude

data APICacheStatus
  = Available
  | Creating
  | Deleting
  | Failed
  | Modifying
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText APICacheStatus where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "creating" -> pure Creating
        "deleting" -> pure Deleting
        "failed" -> pure Failed
        "modifying" -> pure Modifying
        e -> fromTextError $ "Failure parsing APICacheStatus from value: '" <> e
           <> "'. Accepted values: available, creating, deleting, failed, modifying"

instance ToText APICacheStatus where
    toText = \case
        Available -> "AVAILABLE"
        Creating -> "CREATING"
        Deleting -> "DELETING"
        Failed -> "FAILED"
        Modifying -> "MODIFYING"

instance Hashable     APICacheStatus
instance NFData       APICacheStatus
instance ToByteString APICacheStatus
instance ToQuery      APICacheStatus
instance ToHeader     APICacheStatus

instance FromJSON APICacheStatus where
    parseJSON = parseJSONText "APICacheStatus"

data APICacheType
  = R42XLARGE
  | R44XLARGE
  | R48XLARGE
  | R4Large
  | R4XLarge
  | T2Medium
  | T2Small
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText APICacheType where
    parser = takeLowerText >>= \case
        "r4_2xlarge" -> pure R42XLARGE
        "r4_4xlarge" -> pure R44XLARGE
        "r4_8xlarge" -> pure R48XLARGE
        "r4_large" -> pure R4Large
        "r4_xlarge" -> pure R4XLarge
        "t2_medium" -> pure T2Medium
        "t2_small" -> pure T2Small
        e -> fromTextError $ "Failure parsing APICacheType from value: '" <> e
           <> "'. Accepted values: r4_2xlarge, r4_4xlarge, r4_8xlarge, r4_large, r4_xlarge, t2_medium, t2_small"

instance ToText APICacheType where
    toText = \case
        R42XLARGE -> "R4_2XLARGE"
        R44XLARGE -> "R4_4XLARGE"
        R48XLARGE -> "R4_8XLARGE"
        R4Large -> "R4_LARGE"
        R4XLarge -> "R4_XLARGE"
        T2Medium -> "T2_MEDIUM"
        T2Small -> "T2_SMALL"

instance Hashable     APICacheType
instance NFData       APICacheType
instance ToByteString APICacheType
instance ToQuery      APICacheType
instance ToHeader     APICacheType

instance ToJSON APICacheType where
    toJSON = toJSONText

instance FromJSON APICacheType where
    parseJSON = parseJSONText "APICacheType"

data APICachingBehavior
  = FullRequestCaching
  | PerResolverCaching
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText APICachingBehavior where
    parser = takeLowerText >>= \case
        "full_request_caching" -> pure FullRequestCaching
        "per_resolver_caching" -> pure PerResolverCaching
        e -> fromTextError $ "Failure parsing APICachingBehavior from value: '" <> e
           <> "'. Accepted values: full_request_caching, per_resolver_caching"

instance ToText APICachingBehavior where
    toText = \case
        FullRequestCaching -> "FULL_REQUEST_CACHING"
        PerResolverCaching -> "PER_RESOLVER_CACHING"

instance Hashable     APICachingBehavior
instance NFData       APICachingBehavior
instance ToByteString APICachingBehavior
instance ToQuery      APICachingBehavior
instance ToHeader     APICachingBehavior

instance ToJSON APICachingBehavior where
    toJSON = toJSONText

instance FromJSON APICachingBehavior where
    parseJSON = parseJSONText "APICachingBehavior"

data AuthenticationType
  = ATAPIKey
  | ATAWSIAM
  | ATAmazonCognitoUserPools
  | ATOpenidConnect
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText AuthenticationType where
    parser = takeLowerText >>= \case
        "api_key" -> pure ATAPIKey
        "aws_iam" -> pure ATAWSIAM
        "amazon_cognito_user_pools" -> pure ATAmazonCognitoUserPools
        "openid_connect" -> pure ATOpenidConnect
        e -> fromTextError $ "Failure parsing AuthenticationType from value: '" <> e
           <> "'. Accepted values: api_key, aws_iam, amazon_cognito_user_pools, openid_connect"

instance ToText AuthenticationType where
    toText = \case
        ATAPIKey -> "API_KEY"
        ATAWSIAM -> "AWS_IAM"
        ATAmazonCognitoUserPools -> "AMAZON_COGNITO_USER_POOLS"
        ATOpenidConnect -> "OPENID_CONNECT"

instance Hashable     AuthenticationType
instance NFData       AuthenticationType
instance ToByteString AuthenticationType
instance ToQuery      AuthenticationType
instance ToHeader     AuthenticationType

instance ToJSON AuthenticationType where
    toJSON = toJSONText

instance FromJSON AuthenticationType where
    parseJSON = parseJSONText "AuthenticationType"

data AuthorizationType =
  AWSIAM
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText AuthorizationType where
    parser = takeLowerText >>= \case
        "aws_iam" -> pure AWSIAM
        e -> fromTextError $ "Failure parsing AuthorizationType from value: '" <> e
           <> "'. Accepted values: aws_iam"

instance ToText AuthorizationType where
    toText = \case
        AWSIAM -> "AWS_IAM"

instance Hashable     AuthorizationType
instance NFData       AuthorizationType
instance ToByteString AuthorizationType
instance ToQuery      AuthorizationType
instance ToHeader     AuthorizationType

instance ToJSON AuthorizationType where
    toJSON = toJSONText

instance FromJSON AuthorizationType where
    parseJSON = parseJSONText "AuthorizationType"

data ConflictDetectionType
  = CDTNone
  | CDTVersion
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConflictDetectionType where
    parser = takeLowerText >>= \case
        "none" -> pure CDTNone
        "version" -> pure CDTVersion
        e -> fromTextError $ "Failure parsing ConflictDetectionType from value: '" <> e
           <> "'. Accepted values: none, version"

instance ToText ConflictDetectionType where
    toText = \case
        CDTNone -> "NONE"
        CDTVersion -> "VERSION"

instance Hashable     ConflictDetectionType
instance NFData       ConflictDetectionType
instance ToByteString ConflictDetectionType
instance ToQuery      ConflictDetectionType
instance ToHeader     ConflictDetectionType

instance ToJSON ConflictDetectionType where
    toJSON = toJSONText

instance FromJSON ConflictDetectionType where
    parseJSON = parseJSONText "ConflictDetectionType"

data ConflictHandlerType
  = CHTAutomerge
  | CHTLambda
  | CHTNone
  | CHTOptimisticConcurrency
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConflictHandlerType where
    parser = takeLowerText >>= \case
        "automerge" -> pure CHTAutomerge
        "lambda" -> pure CHTLambda
        "none" -> pure CHTNone
        "optimistic_concurrency" -> pure CHTOptimisticConcurrency
        e -> fromTextError $ "Failure parsing ConflictHandlerType from value: '" <> e
           <> "'. Accepted values: automerge, lambda, none, optimistic_concurrency"

instance ToText ConflictHandlerType where
    toText = \case
        CHTAutomerge -> "AUTOMERGE"
        CHTLambda -> "LAMBDA"
        CHTNone -> "NONE"
        CHTOptimisticConcurrency -> "OPTIMISTIC_CONCURRENCY"

instance Hashable     ConflictHandlerType
instance NFData       ConflictHandlerType
instance ToByteString ConflictHandlerType
instance ToQuery      ConflictHandlerType
instance ToHeader     ConflictHandlerType

instance ToJSON ConflictHandlerType where
    toJSON = toJSONText

instance FromJSON ConflictHandlerType where
    parseJSON = parseJSONText "ConflictHandlerType"

data DataSourceType
  = AWSLambda
  | AmazonDynamodb
  | AmazonElasticsearch
  | HTTP
  | None
  | RelationalDatabase
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText DataSourceType where
    parser = takeLowerText >>= \case
        "aws_lambda" -> pure AWSLambda
        "amazon_dynamodb" -> pure AmazonDynamodb
        "amazon_elasticsearch" -> pure AmazonElasticsearch
        "http" -> pure HTTP
        "none" -> pure None
        "relational_database" -> pure RelationalDatabase
        e -> fromTextError $ "Failure parsing DataSourceType from value: '" <> e
           <> "'. Accepted values: aws_lambda, amazon_dynamodb, amazon_elasticsearch, http, none, relational_database"

instance ToText DataSourceType where
    toText = \case
        AWSLambda -> "AWS_LAMBDA"
        AmazonDynamodb -> "AMAZON_DYNAMODB"
        AmazonElasticsearch -> "AMAZON_ELASTICSEARCH"
        HTTP -> "HTTP"
        None -> "NONE"
        RelationalDatabase -> "RELATIONAL_DATABASE"

instance Hashable     DataSourceType
instance NFData       DataSourceType
instance ToByteString DataSourceType
instance ToQuery      DataSourceType
instance ToHeader     DataSourceType

instance ToJSON DataSourceType where
    toJSON = toJSONText

instance FromJSON DataSourceType where
    parseJSON = parseJSONText "DataSourceType"

data DefaultAction
  = Allow
  | Deny
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText DefaultAction where
    parser = takeLowerText >>= \case
        "allow" -> pure Allow
        "deny" -> pure Deny
        e -> fromTextError $ "Failure parsing DefaultAction from value: '" <> e
           <> "'. Accepted values: allow, deny"

instance ToText DefaultAction where
    toText = \case
        Allow -> "ALLOW"
        Deny -> "DENY"

instance Hashable     DefaultAction
instance NFData       DefaultAction
instance ToByteString DefaultAction
instance ToQuery      DefaultAction
instance ToHeader     DefaultAction

instance ToJSON DefaultAction where
    toJSON = toJSONText

instance FromJSON DefaultAction where
    parseJSON = parseJSONText "DefaultAction"

data FieldLogLevel
  = FLLAll
  | FLLError'
  | FLLNone
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText FieldLogLevel where
    parser = takeLowerText >>= \case
        "all" -> pure FLLAll
        "error" -> pure FLLError'
        "none" -> pure FLLNone
        e -> fromTextError $ "Failure parsing FieldLogLevel from value: '" <> e
           <> "'. Accepted values: all, error, none"

instance ToText FieldLogLevel where
    toText = \case
        FLLAll -> "ALL"
        FLLError' -> "ERROR"
        FLLNone -> "NONE"

instance Hashable     FieldLogLevel
instance NFData       FieldLogLevel
instance ToByteString FieldLogLevel
instance ToQuery      FieldLogLevel
instance ToHeader     FieldLogLevel

instance ToJSON FieldLogLevel where
    toJSON = toJSONText

instance FromJSON FieldLogLevel where
    parseJSON = parseJSONText "FieldLogLevel"

data OutputType
  = OTJSON
  | OTSdl
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OutputType where
    parser = takeLowerText >>= \case
        "json" -> pure OTJSON
        "sdl" -> pure OTSdl
        e -> fromTextError $ "Failure parsing OutputType from value: '" <> e
           <> "'. Accepted values: json, sdl"

instance ToText OutputType where
    toText = \case
        OTJSON -> "JSON"
        OTSdl -> "SDL"

instance Hashable     OutputType
instance NFData       OutputType
instance ToByteString OutputType
instance ToQuery      OutputType
instance ToHeader     OutputType

instance ToJSON OutputType where
    toJSON = toJSONText

data RelationalDatabaseSourceType =
  RDSHTTPEndpoint
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RelationalDatabaseSourceType where
    parser = takeLowerText >>= \case
        "rds_http_endpoint" -> pure RDSHTTPEndpoint
        e -> fromTextError $ "Failure parsing RelationalDatabaseSourceType from value: '" <> e
           <> "'. Accepted values: rds_http_endpoint"

instance ToText RelationalDatabaseSourceType where
    toText = \case
        RDSHTTPEndpoint -> "RDS_HTTP_ENDPOINT"

instance Hashable     RelationalDatabaseSourceType
instance NFData       RelationalDatabaseSourceType
instance ToByteString RelationalDatabaseSourceType
instance ToQuery      RelationalDatabaseSourceType
instance ToHeader     RelationalDatabaseSourceType

instance ToJSON RelationalDatabaseSourceType where
    toJSON = toJSONText

instance FromJSON RelationalDatabaseSourceType where
    parseJSON = parseJSONText "RelationalDatabaseSourceType"

data ResolverKind
  = Pipeline
  | Unit
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ResolverKind where
    parser = takeLowerText >>= \case
        "pipeline" -> pure Pipeline
        "unit" -> pure Unit
        e -> fromTextError $ "Failure parsing ResolverKind from value: '" <> e
           <> "'. Accepted values: pipeline, unit"

instance ToText ResolverKind where
    toText = \case
        Pipeline -> "PIPELINE"
        Unit -> "UNIT"

instance Hashable     ResolverKind
instance NFData       ResolverKind
instance ToByteString ResolverKind
instance ToQuery      ResolverKind
instance ToHeader     ResolverKind

instance ToJSON ResolverKind where
    toJSON = toJSONText

instance FromJSON ResolverKind where
    parseJSON = parseJSONText "ResolverKind"

data SchemaStatus
  = SSActive
  | SSDeleting
  | SSFailed
  | SSNotApplicable
  | SSProcessing
  | SSSuccess
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText SchemaStatus where
    parser = takeLowerText >>= \case
        "active" -> pure SSActive
        "deleting" -> pure SSDeleting
        "failed" -> pure SSFailed
        "not_applicable" -> pure SSNotApplicable
        "processing" -> pure SSProcessing
        "success" -> pure SSSuccess
        e -> fromTextError $ "Failure parsing SchemaStatus from value: '" <> e
           <> "'. Accepted values: active, deleting, failed, not_applicable, processing, success"

instance ToText SchemaStatus where
    toText = \case
        SSActive -> "ACTIVE"
        SSDeleting -> "DELETING"
        SSFailed -> "FAILED"
        SSNotApplicable -> "NOT_APPLICABLE"
        SSProcessing -> "PROCESSING"
        SSSuccess -> "SUCCESS"

instance Hashable     SchemaStatus
instance NFData       SchemaStatus
instance ToByteString SchemaStatus
instance ToQuery      SchemaStatus
instance ToHeader     SchemaStatus

instance FromJSON SchemaStatus where
    parseJSON = parseJSONText "SchemaStatus"

data TypeDefinitionFormat
  = JSON
  | Sdl
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText TypeDefinitionFormat where
    parser = takeLowerText >>= \case
        "json" -> pure JSON
        "sdl" -> pure Sdl
        e -> fromTextError $ "Failure parsing TypeDefinitionFormat from value: '" <> e
           <> "'. Accepted values: json, sdl"

instance ToText TypeDefinitionFormat where
    toText = \case
        JSON -> "JSON"
        Sdl -> "SDL"

instance Hashable     TypeDefinitionFormat
instance NFData       TypeDefinitionFormat
instance ToByteString TypeDefinitionFormat
instance ToQuery      TypeDefinitionFormat
instance ToHeader     TypeDefinitionFormat

instance ToJSON TypeDefinitionFormat where
    toJSON = toJSONText

instance FromJSON TypeDefinitionFormat where
    parseJSON = parseJSONText "TypeDefinitionFormat"
