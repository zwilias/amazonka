{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppSync.Types.Product where

import Network.AWS.AppSync.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @ApiCache@ object.
--
--
--
-- /See:/ 'apiCache' smart constructor.
data APICache =
  APICache'
    { _acTtl                      :: !(Maybe Integer)
    , _acStatus                   :: !(Maybe APICacheStatus)
    , _acAtRestEncryptionEnabled  :: !(Maybe Bool)
    , _acTransitEncryptionEnabled :: !(Maybe Bool)
    , _acApiCachingBehavior       :: !(Maybe APICachingBehavior)
    , _acType                     :: !(Maybe APICacheType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'APICache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acTtl' - TTL in seconds for cache entries. Valid values are between 1 and 3600 seconds.
--
-- * 'acStatus' - The cache instance status.     * __AVAILABLE__ : The instance is available for use.     * __CREATING__ : The instance is currently creating.     * __DELETING__ : The instance is currently deleting.     * __MODIFYING__ : The instance is currently modifying.     * __FAILED__ : The instance has failed creation.
--
-- * 'acAtRestEncryptionEnabled' - At rest encryption flag for cache. This setting cannot be updated after creation.
--
-- * 'acTransitEncryptionEnabled' - Transit encryption flag when connecting to cache. This setting cannot be updated after creation.
--
-- * 'acApiCachingBehavior' - Caching behavior.     * __FULL_REQUEST_CACHING__ : All requests are fully cached.     * __PER_RESOLVER_CACHING__ : Individual resovlers that you specify are cached.
--
-- * 'acType' - The cache instance type.     * __T2_SMALL__ : A t2.small instance type.     * __T2_MEDIUM__ : A t2.medium instance type.     * __R4_LARGE__ : A r4.large instance type.     * __R4_XLARGE__ : A r4.xlarge instance type.     * __R4_2XLARGE__ : A r4.2xlarge instance type.     * __R4_4XLARGE__ : A r4.4xlarge instance type.     * __R4_8XLARGE__ : A r4.8xlarge instance type.
apiCache
    :: APICache
apiCache =
  APICache'
    { _acTtl = Nothing
    , _acStatus = Nothing
    , _acAtRestEncryptionEnabled = Nothing
    , _acTransitEncryptionEnabled = Nothing
    , _acApiCachingBehavior = Nothing
    , _acType = Nothing
    }


-- | TTL in seconds for cache entries. Valid values are between 1 and 3600 seconds.
acTtl :: Lens' APICache (Maybe Integer)
acTtl = lens _acTtl (\ s a -> s{_acTtl = a})

-- | The cache instance status.     * __AVAILABLE__ : The instance is available for use.     * __CREATING__ : The instance is currently creating.     * __DELETING__ : The instance is currently deleting.     * __MODIFYING__ : The instance is currently modifying.     * __FAILED__ : The instance has failed creation.
acStatus :: Lens' APICache (Maybe APICacheStatus)
acStatus = lens _acStatus (\ s a -> s{_acStatus = a})

-- | At rest encryption flag for cache. This setting cannot be updated after creation.
acAtRestEncryptionEnabled :: Lens' APICache (Maybe Bool)
acAtRestEncryptionEnabled = lens _acAtRestEncryptionEnabled (\ s a -> s{_acAtRestEncryptionEnabled = a})

-- | Transit encryption flag when connecting to cache. This setting cannot be updated after creation.
acTransitEncryptionEnabled :: Lens' APICache (Maybe Bool)
acTransitEncryptionEnabled = lens _acTransitEncryptionEnabled (\ s a -> s{_acTransitEncryptionEnabled = a})

-- | Caching behavior.     * __FULL_REQUEST_CACHING__ : All requests are fully cached.     * __PER_RESOLVER_CACHING__ : Individual resovlers that you specify are cached.
acApiCachingBehavior :: Lens' APICache (Maybe APICachingBehavior)
acApiCachingBehavior = lens _acApiCachingBehavior (\ s a -> s{_acApiCachingBehavior = a})

-- | The cache instance type.     * __T2_SMALL__ : A t2.small instance type.     * __T2_MEDIUM__ : A t2.medium instance type.     * __R4_LARGE__ : A r4.large instance type.     * __R4_XLARGE__ : A r4.xlarge instance type.     * __R4_2XLARGE__ : A r4.2xlarge instance type.     * __R4_4XLARGE__ : A r4.4xlarge instance type.     * __R4_8XLARGE__ : A r4.8xlarge instance type.
acType :: Lens' APICache (Maybe APICacheType)
acType = lens _acType (\ s a -> s{_acType = a})

instance FromJSON APICache where
        parseJSON
          = withObject "APICache"
              (\ x ->
                 APICache' <$>
                   (x .:? "ttl") <*> (x .:? "status") <*>
                     (x .:? "atRestEncryptionEnabled")
                     <*> (x .:? "transitEncryptionEnabled")
                     <*> (x .:? "apiCachingBehavior")
                     <*> (x .:? "type"))

instance Hashable APICache where

instance NFData APICache where

-- | Describes an API key.
--
--
-- Customers invoke AWS AppSync GraphQL API operations with API keys as an identity mechanism. There are two key versions:
--
-- __da1__ : This version was introduced at launch in November 2017. These keys always expire after 7 days. Key expiration is managed by Amazon DynamoDB TTL. The keys ceased to be valid after February 21, 2018 and should not be used after that date.
--
--     * @ListApiKeys@ returns the expiration time in milliseconds.
--
--     * @CreateApiKey@ returns the expiration time in milliseconds.
--
--     * @UpdateApiKey@ is not available for this key version.
--
--     * @DeleteApiKey@ deletes the item from the table.
--
--     * Expiration is stored in Amazon DynamoDB as milliseconds. This results in a bug where keys are not automatically deleted because DynamoDB expects the TTL to be stored in seconds. As a one-time action, we will delete these keys from the table after February 21, 2018.
--
--
--
-- __da2__ : This version was introduced in February 2018 when AppSync added support to extend key expiration.
--
--     * @ListApiKeys@ returns the expiration time in seconds.
--
--     * @CreateApiKey@ returns the expiration time in seconds and accepts a user-provided expiration time in seconds.
--
--     * @UpdateApiKey@ returns the expiration time in seconds and accepts a user-provided expiration time in seconds. Key expiration can only be updated while the key has not expired.
--
--     * @DeleteApiKey@ deletes the item from the table.
--
--     * Expiration is stored in Amazon DynamoDB as seconds.
--
--
--
--
-- /See:/ 'apiKey' smart constructor.
data APIKey =
  APIKey'
    { _akExpires     :: !(Maybe Integer)
    , _akId          :: !(Maybe Text)
    , _akDescription :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'APIKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akExpires' - The time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour.
--
-- * 'akId' - The API key ID.
--
-- * 'akDescription' - A description of the purpose of the API key.
apiKey
    :: APIKey
apiKey =
  APIKey' {_akExpires = Nothing, _akId = Nothing, _akDescription = Nothing}


-- | The time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour.
akExpires :: Lens' APIKey (Maybe Integer)
akExpires = lens _akExpires (\ s a -> s{_akExpires = a})

-- | The API key ID.
akId :: Lens' APIKey (Maybe Text)
akId = lens _akId (\ s a -> s{_akId = a})

-- | A description of the purpose of the API key.
akDescription :: Lens' APIKey (Maybe Text)
akDescription = lens _akDescription (\ s a -> s{_akDescription = a})

instance FromJSON APIKey where
        parseJSON
          = withObject "APIKey"
              (\ x ->
                 APIKey' <$>
                   (x .:? "expires") <*> (x .:? "id") <*>
                     (x .:? "description"))

instance Hashable APIKey where

instance NFData APIKey where

-- | The AWS IAM configuration.
--
--
--
-- /See:/ 'awsIAMConfig' smart constructor.
data AWSIAMConfig =
  AWSIAMConfig'
    { _aicSigningServiceName :: !(Maybe Text)
    , _aicSigningRegion      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AWSIAMConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aicSigningServiceName' - The signing service name for AWS IAM authorization.
--
-- * 'aicSigningRegion' - The signing region for AWS IAM authorization.
awsIAMConfig
    :: AWSIAMConfig
awsIAMConfig =
  AWSIAMConfig' {_aicSigningServiceName = Nothing, _aicSigningRegion = Nothing}


-- | The signing service name for AWS IAM authorization.
aicSigningServiceName :: Lens' AWSIAMConfig (Maybe Text)
aicSigningServiceName = lens _aicSigningServiceName (\ s a -> s{_aicSigningServiceName = a})

-- | The signing region for AWS IAM authorization.
aicSigningRegion :: Lens' AWSIAMConfig (Maybe Text)
aicSigningRegion = lens _aicSigningRegion (\ s a -> s{_aicSigningRegion = a})

instance FromJSON AWSIAMConfig where
        parseJSON
          = withObject "AWSIAMConfig"
              (\ x ->
                 AWSIAMConfig' <$>
                   (x .:? "signingServiceName") <*>
                     (x .:? "signingRegion"))

instance Hashable AWSIAMConfig where

instance NFData AWSIAMConfig where

instance ToJSON AWSIAMConfig where
        toJSON AWSIAMConfig'{..}
          = object
              (catMaybes
                 [("signingServiceName" .=) <$>
                    _aicSigningServiceName,
                  ("signingRegion" .=) <$> _aicSigningRegion])

-- | Describes an additional authentication provider.
--
--
--
-- /See:/ 'additionalAuthenticationProvider' smart constructor.
data AdditionalAuthenticationProvider =
  AdditionalAuthenticationProvider'
    { _aapOpenIdConnectConfig :: !(Maybe OpenIdConnectConfig)
    , _aapUserPoolConfig      :: !(Maybe CognitoUserPoolConfig)
    , _aapAuthenticationType  :: !(Maybe AuthenticationType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdditionalAuthenticationProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aapOpenIdConnectConfig' - The OpenID Connect configuration.
--
-- * 'aapUserPoolConfig' - The Amazon Cognito user pool configuration.
--
-- * 'aapAuthenticationType' - The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.
additionalAuthenticationProvider
    :: AdditionalAuthenticationProvider
additionalAuthenticationProvider =
  AdditionalAuthenticationProvider'
    { _aapOpenIdConnectConfig = Nothing
    , _aapUserPoolConfig = Nothing
    , _aapAuthenticationType = Nothing
    }


-- | The OpenID Connect configuration.
aapOpenIdConnectConfig :: Lens' AdditionalAuthenticationProvider (Maybe OpenIdConnectConfig)
aapOpenIdConnectConfig = lens _aapOpenIdConnectConfig (\ s a -> s{_aapOpenIdConnectConfig = a})

-- | The Amazon Cognito user pool configuration.
aapUserPoolConfig :: Lens' AdditionalAuthenticationProvider (Maybe CognitoUserPoolConfig)
aapUserPoolConfig = lens _aapUserPoolConfig (\ s a -> s{_aapUserPoolConfig = a})

-- | The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.
aapAuthenticationType :: Lens' AdditionalAuthenticationProvider (Maybe AuthenticationType)
aapAuthenticationType = lens _aapAuthenticationType (\ s a -> s{_aapAuthenticationType = a})

instance FromJSON AdditionalAuthenticationProvider
         where
        parseJSON
          = withObject "AdditionalAuthenticationProvider"
              (\ x ->
                 AdditionalAuthenticationProvider' <$>
                   (x .:? "openIDConnectConfig") <*>
                     (x .:? "userPoolConfig")
                     <*> (x .:? "authenticationType"))

instance Hashable AdditionalAuthenticationProvider
         where

instance NFData AdditionalAuthenticationProvider
         where

instance ToJSON AdditionalAuthenticationProvider
         where
        toJSON AdditionalAuthenticationProvider'{..}
          = object
              (catMaybes
                 [("openIDConnectConfig" .=) <$>
                    _aapOpenIdConnectConfig,
                  ("userPoolConfig" .=) <$> _aapUserPoolConfig,
                  ("authenticationType" .=) <$>
                    _aapAuthenticationType])

-- | The authorization config in case the HTTP endpoint requires authorization.
--
--
--
-- /See:/ 'authorizationConfig' smart constructor.
data AuthorizationConfig =
  AuthorizationConfig'
    { _acAwsIAMConfig      :: !(Maybe AWSIAMConfig)
    , _acAuthorizationType :: !AuthorizationType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAwsIAMConfig' - The AWS IAM settings.
--
-- * 'acAuthorizationType' - The authorization type required by the HTTP endpoint.     * __AWS_IAM__ : The authorization type is Sigv4.
authorizationConfig
    :: AuthorizationType -- ^ 'acAuthorizationType'
    -> AuthorizationConfig
authorizationConfig pAuthorizationType_ =
  AuthorizationConfig'
    {_acAwsIAMConfig = Nothing, _acAuthorizationType = pAuthorizationType_}


-- | The AWS IAM settings.
acAwsIAMConfig :: Lens' AuthorizationConfig (Maybe AWSIAMConfig)
acAwsIAMConfig = lens _acAwsIAMConfig (\ s a -> s{_acAwsIAMConfig = a})

-- | The authorization type required by the HTTP endpoint.     * __AWS_IAM__ : The authorization type is Sigv4.
acAuthorizationType :: Lens' AuthorizationConfig AuthorizationType
acAuthorizationType = lens _acAuthorizationType (\ s a -> s{_acAuthorizationType = a})

instance FromJSON AuthorizationConfig where
        parseJSON
          = withObject "AuthorizationConfig"
              (\ x ->
                 AuthorizationConfig' <$>
                   (x .:? "awsIamConfig") <*>
                     (x .: "authorizationType"))

instance Hashable AuthorizationConfig where

instance NFData AuthorizationConfig where

instance ToJSON AuthorizationConfig where
        toJSON AuthorizationConfig'{..}
          = object
              (catMaybes
                 [("awsIamConfig" .=) <$> _acAwsIAMConfig,
                  Just ("authorizationType" .= _acAuthorizationType)])

-- | The caching configuration for a resolver that has caching enabled.
--
--
--
-- /See:/ 'cachingConfig' smart constructor.
data CachingConfig =
  CachingConfig'
    { _ccTtl         :: !(Maybe Integer)
    , _ccCachingKeys :: !(Maybe [Text])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CachingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccTtl' - The TTL in seconds for a resolver that has caching enabled. Valid values are between 1 and 3600 seconds.
--
-- * 'ccCachingKeys' - The caching keys for a resolver that has caching enabled. Valid values are entries from the @> context.identity@ and @> context.arguments@ maps.
cachingConfig
    :: CachingConfig
cachingConfig = CachingConfig' {_ccTtl = Nothing, _ccCachingKeys = Nothing}


-- | The TTL in seconds for a resolver that has caching enabled. Valid values are between 1 and 3600 seconds.
ccTtl :: Lens' CachingConfig (Maybe Integer)
ccTtl = lens _ccTtl (\ s a -> s{_ccTtl = a})

-- | The caching keys for a resolver that has caching enabled. Valid values are entries from the @> context.identity@ and @> context.arguments@ maps.
ccCachingKeys :: Lens' CachingConfig [Text]
ccCachingKeys = lens _ccCachingKeys (\ s a -> s{_ccCachingKeys = a}) . _Default . _Coerce

instance FromJSON CachingConfig where
        parseJSON
          = withObject "CachingConfig"
              (\ x ->
                 CachingConfig' <$>
                   (x .:? "ttl") <*> (x .:? "cachingKeys" .!= mempty))

instance Hashable CachingConfig where

instance NFData CachingConfig where

instance ToJSON CachingConfig where
        toJSON CachingConfig'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _ccTtl,
                  ("cachingKeys" .=) <$> _ccCachingKeys])

-- | Describes an Amazon Cognito user pool configuration.
--
--
--
-- /See:/ 'cognitoUserPoolConfig' smart constructor.
data CognitoUserPoolConfig =
  CognitoUserPoolConfig'
    { _cupcAppIdClientRegex :: !(Maybe Text)
    , _cupcUserPoolId       :: !Text
    , _cupcAwsRegion        :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CognitoUserPoolConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cupcAppIdClientRegex' - A regular expression for validating the incoming Amazon Cognito user pool app client ID.
--
-- * 'cupcUserPoolId' - The user pool ID.
--
-- * 'cupcAwsRegion' - The AWS Region in which the user pool was created.
cognitoUserPoolConfig
    :: Text -- ^ 'cupcUserPoolId'
    -> Text -- ^ 'cupcAwsRegion'
    -> CognitoUserPoolConfig
cognitoUserPoolConfig pUserPoolId_ pAwsRegion_ =
  CognitoUserPoolConfig'
    { _cupcAppIdClientRegex = Nothing
    , _cupcUserPoolId = pUserPoolId_
    , _cupcAwsRegion = pAwsRegion_
    }


-- | A regular expression for validating the incoming Amazon Cognito user pool app client ID.
cupcAppIdClientRegex :: Lens' CognitoUserPoolConfig (Maybe Text)
cupcAppIdClientRegex = lens _cupcAppIdClientRegex (\ s a -> s{_cupcAppIdClientRegex = a})

-- | The user pool ID.
cupcUserPoolId :: Lens' CognitoUserPoolConfig Text
cupcUserPoolId = lens _cupcUserPoolId (\ s a -> s{_cupcUserPoolId = a})

-- | The AWS Region in which the user pool was created.
cupcAwsRegion :: Lens' CognitoUserPoolConfig Text
cupcAwsRegion = lens _cupcAwsRegion (\ s a -> s{_cupcAwsRegion = a})

instance FromJSON CognitoUserPoolConfig where
        parseJSON
          = withObject "CognitoUserPoolConfig"
              (\ x ->
                 CognitoUserPoolConfig' <$>
                   (x .:? "appIdClientRegex") <*> (x .: "userPoolId")
                     <*> (x .: "awsRegion"))

instance Hashable CognitoUserPoolConfig where

instance NFData CognitoUserPoolConfig where

instance ToJSON CognitoUserPoolConfig where
        toJSON CognitoUserPoolConfig'{..}
          = object
              (catMaybes
                 [("appIdClientRegex" .=) <$> _cupcAppIdClientRegex,
                  Just ("userPoolId" .= _cupcUserPoolId),
                  Just ("awsRegion" .= _cupcAwsRegion)])

-- | Describes a data source.
--
--
--
-- /See:/ 'dataSource' smart constructor.
data DataSource =
  DataSource'
    { _dsServiceRoleARN           :: !(Maybe Text)
    , _dsRelationalDatabaseConfig :: !(Maybe RelationalDatabaseDataSourceConfig)
    , _dsDataSourceARN            :: !(Maybe Text)
    , _dsDynamodbConfig           :: !(Maybe DynamodbDataSourceConfig)
    , _dsName                     :: !(Maybe Text)
    , _dsHttpConfig               :: !(Maybe HTTPDataSourceConfig)
    , _dsLambdaConfig             :: !(Maybe LambdaDataSourceConfig)
    , _dsType                     :: !(Maybe DataSourceType)
    , _dsDescription              :: !(Maybe Text)
    , _dsElasticsearchConfig      :: !(Maybe ElasticsearchDataSourceConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsServiceRoleARN' - The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
--
-- * 'dsRelationalDatabaseConfig' - Relational database settings.
--
-- * 'dsDataSourceARN' - The data source ARN.
--
-- * 'dsDynamodbConfig' - Amazon DynamoDB settings.
--
-- * 'dsName' - The name of the data source.
--
-- * 'dsHttpConfig' - HTTP endpoint settings.
--
-- * 'dsLambdaConfig' - AWS Lambda settings.
--
-- * 'dsType' - The type of the data source.     * __AMAZON_DYNAMODB__ : The data source is an Amazon DynamoDB table.     * __AMAZON_ELASTICSEARCH__ : The data source is an Amazon Elasticsearch Service domain.     * __AWS_LAMBDA__ : The data source is an AWS Lambda function.     * __NONE__ : There is no data source. This type is used when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.     * __HTTP__ : The data source is an HTTP endpoint.     * __RELATIONAL_DATABASE__ : The data source is a relational database.
--
-- * 'dsDescription' - The description of the data source.
--
-- * 'dsElasticsearchConfig' - Amazon Elasticsearch Service settings.
dataSource
    :: DataSource
dataSource =
  DataSource'
    { _dsServiceRoleARN = Nothing
    , _dsRelationalDatabaseConfig = Nothing
    , _dsDataSourceARN = Nothing
    , _dsDynamodbConfig = Nothing
    , _dsName = Nothing
    , _dsHttpConfig = Nothing
    , _dsLambdaConfig = Nothing
    , _dsType = Nothing
    , _dsDescription = Nothing
    , _dsElasticsearchConfig = Nothing
    }


-- | The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.
dsServiceRoleARN :: Lens' DataSource (Maybe Text)
dsServiceRoleARN = lens _dsServiceRoleARN (\ s a -> s{_dsServiceRoleARN = a})

-- | Relational database settings.
dsRelationalDatabaseConfig :: Lens' DataSource (Maybe RelationalDatabaseDataSourceConfig)
dsRelationalDatabaseConfig = lens _dsRelationalDatabaseConfig (\ s a -> s{_dsRelationalDatabaseConfig = a})

-- | The data source ARN.
dsDataSourceARN :: Lens' DataSource (Maybe Text)
dsDataSourceARN = lens _dsDataSourceARN (\ s a -> s{_dsDataSourceARN = a})

-- | Amazon DynamoDB settings.
dsDynamodbConfig :: Lens' DataSource (Maybe DynamodbDataSourceConfig)
dsDynamodbConfig = lens _dsDynamodbConfig (\ s a -> s{_dsDynamodbConfig = a})

-- | The name of the data source.
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | HTTP endpoint settings.
dsHttpConfig :: Lens' DataSource (Maybe HTTPDataSourceConfig)
dsHttpConfig = lens _dsHttpConfig (\ s a -> s{_dsHttpConfig = a})

-- | AWS Lambda settings.
dsLambdaConfig :: Lens' DataSource (Maybe LambdaDataSourceConfig)
dsLambdaConfig = lens _dsLambdaConfig (\ s a -> s{_dsLambdaConfig = a})

-- | The type of the data source.     * __AMAZON_DYNAMODB__ : The data source is an Amazon DynamoDB table.     * __AMAZON_ELASTICSEARCH__ : The data source is an Amazon Elasticsearch Service domain.     * __AWS_LAMBDA__ : The data source is an AWS Lambda function.     * __NONE__ : There is no data source. This type is used when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.     * __HTTP__ : The data source is an HTTP endpoint.     * __RELATIONAL_DATABASE__ : The data source is a relational database.
dsType :: Lens' DataSource (Maybe DataSourceType)
dsType = lens _dsType (\ s a -> s{_dsType = a})

-- | The description of the data source.
dsDescription :: Lens' DataSource (Maybe Text)
dsDescription = lens _dsDescription (\ s a -> s{_dsDescription = a})

-- | Amazon Elasticsearch Service settings.
dsElasticsearchConfig :: Lens' DataSource (Maybe ElasticsearchDataSourceConfig)
dsElasticsearchConfig = lens _dsElasticsearchConfig (\ s a -> s{_dsElasticsearchConfig = a})

instance FromJSON DataSource where
        parseJSON
          = withObject "DataSource"
              (\ x ->
                 DataSource' <$>
                   (x .:? "serviceRoleArn") <*>
                     (x .:? "relationalDatabaseConfig")
                     <*> (x .:? "dataSourceArn")
                     <*> (x .:? "dynamodbConfig")
                     <*> (x .:? "name")
                     <*> (x .:? "httpConfig")
                     <*> (x .:? "lambdaConfig")
                     <*> (x .:? "type")
                     <*> (x .:? "description")
                     <*> (x .:? "elasticsearchConfig"))

instance Hashable DataSource where

instance NFData DataSource where

-- | Describes a Delta Sync configuration.
--
--
--
-- /See:/ 'deltaSyncConfig' smart constructor.
data DeltaSyncConfig =
  DeltaSyncConfig'
    { _dscBaseTableTTL       :: !(Maybe Integer)
    , _dscDeltaSyncTableName :: !(Maybe Text)
    , _dscDeltaSyncTableTTL  :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeltaSyncConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscBaseTableTTL' - The number of minutes an Item is stored in the datasource.
--
-- * 'dscDeltaSyncTableName' - The Delta Sync table name.
--
-- * 'dscDeltaSyncTableTTL' - The number of minutes a Delta Sync log entry is stored in the Delta Sync table.
deltaSyncConfig
    :: DeltaSyncConfig
deltaSyncConfig =
  DeltaSyncConfig'
    { _dscBaseTableTTL = Nothing
    , _dscDeltaSyncTableName = Nothing
    , _dscDeltaSyncTableTTL = Nothing
    }


-- | The number of minutes an Item is stored in the datasource.
dscBaseTableTTL :: Lens' DeltaSyncConfig (Maybe Integer)
dscBaseTableTTL = lens _dscBaseTableTTL (\ s a -> s{_dscBaseTableTTL = a})

-- | The Delta Sync table name.
dscDeltaSyncTableName :: Lens' DeltaSyncConfig (Maybe Text)
dscDeltaSyncTableName = lens _dscDeltaSyncTableName (\ s a -> s{_dscDeltaSyncTableName = a})

-- | The number of minutes a Delta Sync log entry is stored in the Delta Sync table.
dscDeltaSyncTableTTL :: Lens' DeltaSyncConfig (Maybe Integer)
dscDeltaSyncTableTTL = lens _dscDeltaSyncTableTTL (\ s a -> s{_dscDeltaSyncTableTTL = a})

instance FromJSON DeltaSyncConfig where
        parseJSON
          = withObject "DeltaSyncConfig"
              (\ x ->
                 DeltaSyncConfig' <$>
                   (x .:? "baseTableTTL") <*>
                     (x .:? "deltaSyncTableName")
                     <*> (x .:? "deltaSyncTableTTL"))

instance Hashable DeltaSyncConfig where

instance NFData DeltaSyncConfig where

instance ToJSON DeltaSyncConfig where
        toJSON DeltaSyncConfig'{..}
          = object
              (catMaybes
                 [("baseTableTTL" .=) <$> _dscBaseTableTTL,
                  ("deltaSyncTableName" .=) <$> _dscDeltaSyncTableName,
                  ("deltaSyncTableTTL" .=) <$> _dscDeltaSyncTableTTL])

-- | Describes an Amazon DynamoDB data source configuration.
--
--
--
-- /See:/ 'dynamodbDataSourceConfig' smart constructor.
data DynamodbDataSourceConfig =
  DynamodbDataSourceConfig'
    { _ddscVersioned            :: !(Maybe Bool)
    , _ddscUseCallerCredentials :: !(Maybe Bool)
    , _ddscDeltaSyncConfig      :: !(Maybe DeltaSyncConfig)
    , _ddscTableName            :: !Text
    , _ddscAwsRegion            :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamodbDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddscVersioned' - Set to TRUE to use Conflict Detection and Resolution with this data source.
--
-- * 'ddscUseCallerCredentials' - Set to TRUE to use Amazon Cognito credentials with this data source.
--
-- * 'ddscDeltaSyncConfig' - The @DeltaSyncConfig@ for a versioned datasource.
--
-- * 'ddscTableName' - The table name.
--
-- * 'ddscAwsRegion' - The AWS Region.
dynamodbDataSourceConfig
    :: Text -- ^ 'ddscTableName'
    -> Text -- ^ 'ddscAwsRegion'
    -> DynamodbDataSourceConfig
dynamodbDataSourceConfig pTableName_ pAwsRegion_ =
  DynamodbDataSourceConfig'
    { _ddscVersioned = Nothing
    , _ddscUseCallerCredentials = Nothing
    , _ddscDeltaSyncConfig = Nothing
    , _ddscTableName = pTableName_
    , _ddscAwsRegion = pAwsRegion_
    }


-- | Set to TRUE to use Conflict Detection and Resolution with this data source.
ddscVersioned :: Lens' DynamodbDataSourceConfig (Maybe Bool)
ddscVersioned = lens _ddscVersioned (\ s a -> s{_ddscVersioned = a})

-- | Set to TRUE to use Amazon Cognito credentials with this data source.
ddscUseCallerCredentials :: Lens' DynamodbDataSourceConfig (Maybe Bool)
ddscUseCallerCredentials = lens _ddscUseCallerCredentials (\ s a -> s{_ddscUseCallerCredentials = a})

-- | The @DeltaSyncConfig@ for a versioned datasource.
ddscDeltaSyncConfig :: Lens' DynamodbDataSourceConfig (Maybe DeltaSyncConfig)
ddscDeltaSyncConfig = lens _ddscDeltaSyncConfig (\ s a -> s{_ddscDeltaSyncConfig = a})

-- | The table name.
ddscTableName :: Lens' DynamodbDataSourceConfig Text
ddscTableName = lens _ddscTableName (\ s a -> s{_ddscTableName = a})

-- | The AWS Region.
ddscAwsRegion :: Lens' DynamodbDataSourceConfig Text
ddscAwsRegion = lens _ddscAwsRegion (\ s a -> s{_ddscAwsRegion = a})

instance FromJSON DynamodbDataSourceConfig where
        parseJSON
          = withObject "DynamodbDataSourceConfig"
              (\ x ->
                 DynamodbDataSourceConfig' <$>
                   (x .:? "versioned") <*>
                     (x .:? "useCallerCredentials")
                     <*> (x .:? "deltaSyncConfig")
                     <*> (x .: "tableName")
                     <*> (x .: "awsRegion"))

instance Hashable DynamodbDataSourceConfig where

instance NFData DynamodbDataSourceConfig where

instance ToJSON DynamodbDataSourceConfig where
        toJSON DynamodbDataSourceConfig'{..}
          = object
              (catMaybes
                 [("versioned" .=) <$> _ddscVersioned,
                  ("useCallerCredentials" .=) <$>
                    _ddscUseCallerCredentials,
                  ("deltaSyncConfig" .=) <$> _ddscDeltaSyncConfig,
                  Just ("tableName" .= _ddscTableName),
                  Just ("awsRegion" .= _ddscAwsRegion)])

-- | Describes an Elasticsearch data source configuration.
--
--
--
-- /See:/ 'elasticsearchDataSourceConfig' smart constructor.
data ElasticsearchDataSourceConfig =
  ElasticsearchDataSourceConfig'
    { _edscEndpoint  :: !Text
    , _edscAwsRegion :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ElasticsearchDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edscEndpoint' - The endpoint.
--
-- * 'edscAwsRegion' - The AWS Region.
elasticsearchDataSourceConfig
    :: Text -- ^ 'edscEndpoint'
    -> Text -- ^ 'edscAwsRegion'
    -> ElasticsearchDataSourceConfig
elasticsearchDataSourceConfig pEndpoint_ pAwsRegion_ =
  ElasticsearchDataSourceConfig'
    {_edscEndpoint = pEndpoint_, _edscAwsRegion = pAwsRegion_}


-- | The endpoint.
edscEndpoint :: Lens' ElasticsearchDataSourceConfig Text
edscEndpoint = lens _edscEndpoint (\ s a -> s{_edscEndpoint = a})

-- | The AWS Region.
edscAwsRegion :: Lens' ElasticsearchDataSourceConfig Text
edscAwsRegion = lens _edscAwsRegion (\ s a -> s{_edscAwsRegion = a})

instance FromJSON ElasticsearchDataSourceConfig where
        parseJSON
          = withObject "ElasticsearchDataSourceConfig"
              (\ x ->
                 ElasticsearchDataSourceConfig' <$>
                   (x .: "endpoint") <*> (x .: "awsRegion"))

instance Hashable ElasticsearchDataSourceConfig where

instance NFData ElasticsearchDataSourceConfig where

instance ToJSON ElasticsearchDataSourceConfig where
        toJSON ElasticsearchDataSourceConfig'{..}
          = object
              (catMaybes
                 [Just ("endpoint" .= _edscEndpoint),
                  Just ("awsRegion" .= _edscAwsRegion)])

-- | A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
--
--
--
-- /See:/ 'functionConfiguration' smart constructor.
data FunctionConfiguration =
  FunctionConfiguration'
    { _fcFunctionARN             :: !(Maybe Text)
    , _fcDataSourceName          :: !(Maybe Text)
    , _fcRequestMappingTemplate  :: !(Maybe Text)
    , _fcName                    :: !(Maybe Text)
    , _fcFunctionId              :: !(Maybe Text)
    , _fcResponseMappingTemplate :: !(Maybe Text)
    , _fcFunctionVersion         :: !(Maybe Text)
    , _fcDescription             :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcFunctionARN' - The ARN of the @Function@ object.
--
-- * 'fcDataSourceName' - The name of the @DataSource@ .
--
-- * 'fcRequestMappingTemplate' - The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
--
-- * 'fcName' - The name of the @Function@ object.
--
-- * 'fcFunctionId' - A unique ID representing the @Function@ object.
--
-- * 'fcResponseMappingTemplate' - The @Function@ response mapping template.
--
-- * 'fcFunctionVersion' - The version of the request mapping template. Currently only the 2018-05-29 version of the template is supported.
--
-- * 'fcDescription' - The @Function@ description.
functionConfiguration
    :: FunctionConfiguration
functionConfiguration =
  FunctionConfiguration'
    { _fcFunctionARN = Nothing
    , _fcDataSourceName = Nothing
    , _fcRequestMappingTemplate = Nothing
    , _fcName = Nothing
    , _fcFunctionId = Nothing
    , _fcResponseMappingTemplate = Nothing
    , _fcFunctionVersion = Nothing
    , _fcDescription = Nothing
    }


-- | The ARN of the @Function@ object.
fcFunctionARN :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionARN = lens _fcFunctionARN (\ s a -> s{_fcFunctionARN = a})

-- | The name of the @DataSource@ .
fcDataSourceName :: Lens' FunctionConfiguration (Maybe Text)
fcDataSourceName = lens _fcDataSourceName (\ s a -> s{_fcDataSourceName = a})

-- | The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
fcRequestMappingTemplate :: Lens' FunctionConfiguration (Maybe Text)
fcRequestMappingTemplate = lens _fcRequestMappingTemplate (\ s a -> s{_fcRequestMappingTemplate = a})

-- | The name of the @Function@ object.
fcName :: Lens' FunctionConfiguration (Maybe Text)
fcName = lens _fcName (\ s a -> s{_fcName = a})

-- | A unique ID representing the @Function@ object.
fcFunctionId :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionId = lens _fcFunctionId (\ s a -> s{_fcFunctionId = a})

-- | The @Function@ response mapping template.
fcResponseMappingTemplate :: Lens' FunctionConfiguration (Maybe Text)
fcResponseMappingTemplate = lens _fcResponseMappingTemplate (\ s a -> s{_fcResponseMappingTemplate = a})

-- | The version of the request mapping template. Currently only the 2018-05-29 version of the template is supported.
fcFunctionVersion :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionVersion = lens _fcFunctionVersion (\ s a -> s{_fcFunctionVersion = a})

-- | The @Function@ description.
fcDescription :: Lens' FunctionConfiguration (Maybe Text)
fcDescription = lens _fcDescription (\ s a -> s{_fcDescription = a})

instance FromJSON FunctionConfiguration where
        parseJSON
          = withObject "FunctionConfiguration"
              (\ x ->
                 FunctionConfiguration' <$>
                   (x .:? "functionArn") <*> (x .:? "dataSourceName")
                     <*> (x .:? "requestMappingTemplate")
                     <*> (x .:? "name")
                     <*> (x .:? "functionId")
                     <*> (x .:? "responseMappingTemplate")
                     <*> (x .:? "functionVersion")
                     <*> (x .:? "description"))

instance Hashable FunctionConfiguration where

instance NFData FunctionConfiguration where

-- | Describes a GraphQL API.
--
--
--
-- /See:/ 'graphqlAPI' smart constructor.
data GraphqlAPI =
  GraphqlAPI'
    { _gaXrayEnabled :: !(Maybe Bool)
    , _gaArn :: !(Maybe Text)
    , _gaApiId :: !(Maybe Text)
    , _gaUris :: !(Maybe (Map Text Text))
    , _gaOpenIdConnectConfig :: !(Maybe OpenIdConnectConfig)
    , _gaAdditionalAuthenticationProviders :: !(Maybe [AdditionalAuthenticationProvider])
    , _gaName :: !(Maybe Text)
    , _gaUserPoolConfig :: !(Maybe UserPoolConfig)
    , _gaAuthenticationType :: !(Maybe AuthenticationType)
    , _gaLogConfig :: !(Maybe LogConfig)
    , _gaTags :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'GraphqlAPI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaXrayEnabled' - A flag representing whether X-Ray tracing is enabled for this @GraphqlApi@ .
--
-- * 'gaArn' - The ARN.
--
-- * 'gaApiId' - The API ID.
--
-- * 'gaUris' - The URIs.
--
-- * 'gaOpenIdConnectConfig' - The OpenID Connect configuration.
--
-- * 'gaAdditionalAuthenticationProviders' - A list of additional authentication providers for the @GraphqlApi@ API.
--
-- * 'gaName' - The API name.
--
-- * 'gaUserPoolConfig' - The Amazon Cognito user pool configuration.
--
-- * 'gaAuthenticationType' - The authentication type.
--
-- * 'gaLogConfig' - The Amazon CloudWatch Logs configuration.
--
-- * 'gaTags' - The tags.
graphqlAPI
    :: GraphqlAPI
graphqlAPI =
  GraphqlAPI'
    { _gaXrayEnabled = Nothing
    , _gaArn = Nothing
    , _gaApiId = Nothing
    , _gaUris = Nothing
    , _gaOpenIdConnectConfig = Nothing
    , _gaAdditionalAuthenticationProviders = Nothing
    , _gaName = Nothing
    , _gaUserPoolConfig = Nothing
    , _gaAuthenticationType = Nothing
    , _gaLogConfig = Nothing
    , _gaTags = Nothing
    }


-- | A flag representing whether X-Ray tracing is enabled for this @GraphqlApi@ .
gaXrayEnabled :: Lens' GraphqlAPI (Maybe Bool)
gaXrayEnabled = lens _gaXrayEnabled (\ s a -> s{_gaXrayEnabled = a})

-- | The ARN.
gaArn :: Lens' GraphqlAPI (Maybe Text)
gaArn = lens _gaArn (\ s a -> s{_gaArn = a})

-- | The API ID.
gaApiId :: Lens' GraphqlAPI (Maybe Text)
gaApiId = lens _gaApiId (\ s a -> s{_gaApiId = a})

-- | The URIs.
gaUris :: Lens' GraphqlAPI (HashMap Text Text)
gaUris = lens _gaUris (\ s a -> s{_gaUris = a}) . _Default . _Map

-- | The OpenID Connect configuration.
gaOpenIdConnectConfig :: Lens' GraphqlAPI (Maybe OpenIdConnectConfig)
gaOpenIdConnectConfig = lens _gaOpenIdConnectConfig (\ s a -> s{_gaOpenIdConnectConfig = a})

-- | A list of additional authentication providers for the @GraphqlApi@ API.
gaAdditionalAuthenticationProviders :: Lens' GraphqlAPI [AdditionalAuthenticationProvider]
gaAdditionalAuthenticationProviders = lens _gaAdditionalAuthenticationProviders (\ s a -> s{_gaAdditionalAuthenticationProviders = a}) . _Default . _Coerce

-- | The API name.
gaName :: Lens' GraphqlAPI (Maybe Text)
gaName = lens _gaName (\ s a -> s{_gaName = a})

-- | The Amazon Cognito user pool configuration.
gaUserPoolConfig :: Lens' GraphqlAPI (Maybe UserPoolConfig)
gaUserPoolConfig = lens _gaUserPoolConfig (\ s a -> s{_gaUserPoolConfig = a})

-- | The authentication type.
gaAuthenticationType :: Lens' GraphqlAPI (Maybe AuthenticationType)
gaAuthenticationType = lens _gaAuthenticationType (\ s a -> s{_gaAuthenticationType = a})

-- | The Amazon CloudWatch Logs configuration.
gaLogConfig :: Lens' GraphqlAPI (Maybe LogConfig)
gaLogConfig = lens _gaLogConfig (\ s a -> s{_gaLogConfig = a})

-- | The tags.
gaTags :: Lens' GraphqlAPI (HashMap Text Text)
gaTags = lens _gaTags (\ s a -> s{_gaTags = a}) . _Default . _Map

instance FromJSON GraphqlAPI where
        parseJSON
          = withObject "GraphqlAPI"
              (\ x ->
                 GraphqlAPI' <$>
                   (x .:? "xrayEnabled") <*> (x .:? "arn") <*>
                     (x .:? "apiId")
                     <*> (x .:? "uris" .!= mempty)
                     <*> (x .:? "openIDConnectConfig")
                     <*>
                     (x .:? "additionalAuthenticationProviders" .!=
                        mempty)
                     <*> (x .:? "name")
                     <*> (x .:? "userPoolConfig")
                     <*> (x .:? "authenticationType")
                     <*> (x .:? "logConfig")
                     <*> (x .:? "tags" .!= mempty))

instance Hashable GraphqlAPI where

instance NFData GraphqlAPI where

-- | Describes an HTTP data source configuration.
--
--
--
-- /See:/ 'hTTPDataSourceConfig' smart constructor.
data HTTPDataSourceConfig =
  HTTPDataSourceConfig'
    { _httpdscAuthorizationConfig :: !(Maybe AuthorizationConfig)
    , _httpdscEndpoint            :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpdscAuthorizationConfig' - The authorization config in case the HTTP endpoint requires authorization.
--
-- * 'httpdscEndpoint' - The HTTP URL endpoint. You can either specify the domain name or IP, and port combination, and the URL scheme must be HTTP or HTTPS. If the port is not specified, AWS AppSync uses the default port 80 for the HTTP endpoint and port 443 for HTTPS endpoints.
hTTPDataSourceConfig
    :: HTTPDataSourceConfig
hTTPDataSourceConfig =
  HTTPDataSourceConfig'
    {_httpdscAuthorizationConfig = Nothing, _httpdscEndpoint = Nothing}


-- | The authorization config in case the HTTP endpoint requires authorization.
httpdscAuthorizationConfig :: Lens' HTTPDataSourceConfig (Maybe AuthorizationConfig)
httpdscAuthorizationConfig = lens _httpdscAuthorizationConfig (\ s a -> s{_httpdscAuthorizationConfig = a})

-- | The HTTP URL endpoint. You can either specify the domain name or IP, and port combination, and the URL scheme must be HTTP or HTTPS. If the port is not specified, AWS AppSync uses the default port 80 for the HTTP endpoint and port 443 for HTTPS endpoints.
httpdscEndpoint :: Lens' HTTPDataSourceConfig (Maybe Text)
httpdscEndpoint = lens _httpdscEndpoint (\ s a -> s{_httpdscEndpoint = a})

instance FromJSON HTTPDataSourceConfig where
        parseJSON
          = withObject "HTTPDataSourceConfig"
              (\ x ->
                 HTTPDataSourceConfig' <$>
                   (x .:? "authorizationConfig") <*> (x .:? "endpoint"))

instance Hashable HTTPDataSourceConfig where

instance NFData HTTPDataSourceConfig where

instance ToJSON HTTPDataSourceConfig where
        toJSON HTTPDataSourceConfig'{..}
          = object
              (catMaybes
                 [("authorizationConfig" .=) <$>
                    _httpdscAuthorizationConfig,
                  ("endpoint" .=) <$> _httpdscEndpoint])

-- | The @LambdaConflictHandlerConfig@ object when configuring LAMBDA as the Conflict Handler.
--
--
--
-- /See:/ 'lambdaConflictHandlerConfig' smart constructor.
newtype LambdaConflictHandlerConfig =
  LambdaConflictHandlerConfig'
    { _lchcLambdaConflictHandlerARN :: Maybe Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'LambdaConflictHandlerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lchcLambdaConflictHandlerARN' - The Arn for the Lambda function to use as the Conflict Handler.
lambdaConflictHandlerConfig
    :: LambdaConflictHandlerConfig
lambdaConflictHandlerConfig =
  LambdaConflictHandlerConfig' {_lchcLambdaConflictHandlerARN = Nothing}


-- | The Arn for the Lambda function to use as the Conflict Handler.
lchcLambdaConflictHandlerARN :: Lens' LambdaConflictHandlerConfig (Maybe Text)
lchcLambdaConflictHandlerARN = lens _lchcLambdaConflictHandlerARN (\ s a -> s{_lchcLambdaConflictHandlerARN = a})

instance FromJSON LambdaConflictHandlerConfig where
        parseJSON
          = withObject "LambdaConflictHandlerConfig"
              (\ x ->
                 LambdaConflictHandlerConfig' <$>
                   (x .:? "lambdaConflictHandlerArn"))

instance Hashable LambdaConflictHandlerConfig where

instance NFData LambdaConflictHandlerConfig where

instance ToJSON LambdaConflictHandlerConfig where
        toJSON LambdaConflictHandlerConfig'{..}
          = object
              (catMaybes
                 [("lambdaConflictHandlerArn" .=) <$>
                    _lchcLambdaConflictHandlerARN])

-- | Describes an AWS Lambda data source configuration.
--
--
--
-- /See:/ 'lambdaDataSourceConfig' smart constructor.
newtype LambdaDataSourceConfig =
  LambdaDataSourceConfig'
    { _ldscLambdaFunctionARN :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'LambdaDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldscLambdaFunctionARN' - The ARN for the Lambda function.
lambdaDataSourceConfig
    :: Text -- ^ 'ldscLambdaFunctionARN'
    -> LambdaDataSourceConfig
lambdaDataSourceConfig pLambdaFunctionARN_ =
  LambdaDataSourceConfig' {_ldscLambdaFunctionARN = pLambdaFunctionARN_}


-- | The ARN for the Lambda function.
ldscLambdaFunctionARN :: Lens' LambdaDataSourceConfig Text
ldscLambdaFunctionARN = lens _ldscLambdaFunctionARN (\ s a -> s{_ldscLambdaFunctionARN = a})

instance FromJSON LambdaDataSourceConfig where
        parseJSON
          = withObject "LambdaDataSourceConfig"
              (\ x ->
                 LambdaDataSourceConfig' <$>
                   (x .: "lambdaFunctionArn"))

instance Hashable LambdaDataSourceConfig where

instance NFData LambdaDataSourceConfig where

instance ToJSON LambdaDataSourceConfig where
        toJSON LambdaDataSourceConfig'{..}
          = object
              (catMaybes
                 [Just
                    ("lambdaFunctionArn" .= _ldscLambdaFunctionARN)])

-- | The CloudWatch Logs configuration.
--
--
--
-- /See:/ 'logConfig' smart constructor.
data LogConfig =
  LogConfig'
    { _lcExcludeVerboseContent :: !(Maybe Bool)
    , _lcFieldLogLevel         :: !FieldLogLevel
    , _lcCloudWatchLogsRoleARN :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcExcludeVerboseContent' - Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.
--
-- * 'lcFieldLogLevel' - The field logging level. Values can be NONE, ERROR, or ALL.      * __NONE__ : No field-level logs are captured.     * __ERROR__ : Logs the following information only for the fields that are in error:     * The error section in the server response.     * Field-level errors.     * The generated request/response functions that got resolved for error fields.     * __ALL__ : The following information is logged for all fields in the query:     * Field-level tracing information.     * The generated request/response functions that got resolved for each field.
--
-- * 'lcCloudWatchLogsRoleARN' - The service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account.
logConfig
    :: FieldLogLevel -- ^ 'lcFieldLogLevel'
    -> Text -- ^ 'lcCloudWatchLogsRoleARN'
    -> LogConfig
logConfig pFieldLogLevel_ pCloudWatchLogsRoleARN_ =
  LogConfig'
    { _lcExcludeVerboseContent = Nothing
    , _lcFieldLogLevel = pFieldLogLevel_
    , _lcCloudWatchLogsRoleARN = pCloudWatchLogsRoleARN_
    }


-- | Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.
lcExcludeVerboseContent :: Lens' LogConfig (Maybe Bool)
lcExcludeVerboseContent = lens _lcExcludeVerboseContent (\ s a -> s{_lcExcludeVerboseContent = a})

-- | The field logging level. Values can be NONE, ERROR, or ALL.      * __NONE__ : No field-level logs are captured.     * __ERROR__ : Logs the following information only for the fields that are in error:     * The error section in the server response.     * Field-level errors.     * The generated request/response functions that got resolved for error fields.     * __ALL__ : The following information is logged for all fields in the query:     * Field-level tracing information.     * The generated request/response functions that got resolved for each field.
lcFieldLogLevel :: Lens' LogConfig FieldLogLevel
lcFieldLogLevel = lens _lcFieldLogLevel (\ s a -> s{_lcFieldLogLevel = a})

-- | The service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account.
lcCloudWatchLogsRoleARN :: Lens' LogConfig Text
lcCloudWatchLogsRoleARN = lens _lcCloudWatchLogsRoleARN (\ s a -> s{_lcCloudWatchLogsRoleARN = a})

instance FromJSON LogConfig where
        parseJSON
          = withObject "LogConfig"
              (\ x ->
                 LogConfig' <$>
                   (x .:? "excludeVerboseContent") <*>
                     (x .: "fieldLogLevel")
                     <*> (x .: "cloudWatchLogsRoleArn"))

instance Hashable LogConfig where

instance NFData LogConfig where

instance ToJSON LogConfig where
        toJSON LogConfig'{..}
          = object
              (catMaybes
                 [("excludeVerboseContent" .=) <$>
                    _lcExcludeVerboseContent,
                  Just ("fieldLogLevel" .= _lcFieldLogLevel),
                  Just
                    ("cloudWatchLogsRoleArn" .=
                       _lcCloudWatchLogsRoleARN)])

-- | Describes an OpenID Connect configuration.
--
--
--
-- /See:/ 'openIdConnectConfig' smart constructor.
data OpenIdConnectConfig =
  OpenIdConnectConfig'
    { _oiccAuthTTL  :: !(Maybe Integer)
    , _oiccClientId :: !(Maybe Text)
    , _oiccIatTTL   :: !(Maybe Integer)
    , _oiccIssuer   :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OpenIdConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiccAuthTTL' - The number of milliseconds a token is valid after being authenticated.
--
-- * 'oiccClientId' - The client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
--
-- * 'oiccIatTTL' - The number of milliseconds a token is valid after being issued to a user.
--
-- * 'oiccIssuer' - The issuer for the OpenID Connect configuration. The issuer returned by discovery must exactly match the value of @iss@ in the ID token.
openIdConnectConfig
    :: Text -- ^ 'oiccIssuer'
    -> OpenIdConnectConfig
openIdConnectConfig pIssuer_ =
  OpenIdConnectConfig'
    { _oiccAuthTTL = Nothing
    , _oiccClientId = Nothing
    , _oiccIatTTL = Nothing
    , _oiccIssuer = pIssuer_
    }


-- | The number of milliseconds a token is valid after being authenticated.
oiccAuthTTL :: Lens' OpenIdConnectConfig (Maybe Integer)
oiccAuthTTL = lens _oiccAuthTTL (\ s a -> s{_oiccAuthTTL = a})

-- | The client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
oiccClientId :: Lens' OpenIdConnectConfig (Maybe Text)
oiccClientId = lens _oiccClientId (\ s a -> s{_oiccClientId = a})

-- | The number of milliseconds a token is valid after being issued to a user.
oiccIatTTL :: Lens' OpenIdConnectConfig (Maybe Integer)
oiccIatTTL = lens _oiccIatTTL (\ s a -> s{_oiccIatTTL = a})

-- | The issuer for the OpenID Connect configuration. The issuer returned by discovery must exactly match the value of @iss@ in the ID token.
oiccIssuer :: Lens' OpenIdConnectConfig Text
oiccIssuer = lens _oiccIssuer (\ s a -> s{_oiccIssuer = a})

instance FromJSON OpenIdConnectConfig where
        parseJSON
          = withObject "OpenIdConnectConfig"
              (\ x ->
                 OpenIdConnectConfig' <$>
                   (x .:? "authTTL") <*> (x .:? "clientId") <*>
                     (x .:? "iatTTL")
                     <*> (x .: "issuer"))

instance Hashable OpenIdConnectConfig where

instance NFData OpenIdConnectConfig where

instance ToJSON OpenIdConnectConfig where
        toJSON OpenIdConnectConfig'{..}
          = object
              (catMaybes
                 [("authTTL" .=) <$> _oiccAuthTTL,
                  ("clientId" .=) <$> _oiccClientId,
                  ("iatTTL" .=) <$> _oiccIatTTL,
                  Just ("issuer" .= _oiccIssuer)])

-- | The pipeline configuration for a resolver of kind @PIPELINE@ .
--
--
--
-- /See:/ 'pipelineConfig' smart constructor.
newtype PipelineConfig =
  PipelineConfig'
    { _pcFunctions :: Maybe [Text]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PipelineConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcFunctions' - A list of @Function@ objects.
pipelineConfig
    :: PipelineConfig
pipelineConfig = PipelineConfig' {_pcFunctions = Nothing}


-- | A list of @Function@ objects.
pcFunctions :: Lens' PipelineConfig [Text]
pcFunctions = lens _pcFunctions (\ s a -> s{_pcFunctions = a}) . _Default . _Coerce

instance FromJSON PipelineConfig where
        parseJSON
          = withObject "PipelineConfig"
              (\ x ->
                 PipelineConfig' <$> (x .:? "functions" .!= mempty))

instance Hashable PipelineConfig where

instance NFData PipelineConfig where

instance ToJSON PipelineConfig where
        toJSON PipelineConfig'{..}
          = object
              (catMaybes [("functions" .=) <$> _pcFunctions])

-- | The Amazon RDS HTTP endpoint configuration.
--
--
--
-- /See:/ 'rdsHTTPEndpointConfig' smart constructor.
data RDSHTTPEndpointConfig =
  RDSHTTPEndpointConfig'
    { _rhttpecDbClusterIdentifier :: !(Maybe Text)
    , _rhttpecSchema              :: !(Maybe Text)
    , _rhttpecDatabaseName        :: !(Maybe Text)
    , _rhttpecAwsRegion           :: !(Maybe Text)
    , _rhttpecAwsSecretStoreARN   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RDSHTTPEndpointConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhttpecDbClusterIdentifier' - Amazon RDS cluster identifier.
--
-- * 'rhttpecSchema' - Logical schema name.
--
-- * 'rhttpecDatabaseName' - Logical database name.
--
-- * 'rhttpecAwsRegion' - AWS Region for RDS HTTP endpoint.
--
-- * 'rhttpecAwsSecretStoreARN' - AWS secret store ARN for database credentials.
rdsHTTPEndpointConfig
    :: RDSHTTPEndpointConfig
rdsHTTPEndpointConfig =
  RDSHTTPEndpointConfig'
    { _rhttpecDbClusterIdentifier = Nothing
    , _rhttpecSchema = Nothing
    , _rhttpecDatabaseName = Nothing
    , _rhttpecAwsRegion = Nothing
    , _rhttpecAwsSecretStoreARN = Nothing
    }


-- | Amazon RDS cluster identifier.
rhttpecDbClusterIdentifier :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecDbClusterIdentifier = lens _rhttpecDbClusterIdentifier (\ s a -> s{_rhttpecDbClusterIdentifier = a})

-- | Logical schema name.
rhttpecSchema :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecSchema = lens _rhttpecSchema (\ s a -> s{_rhttpecSchema = a})

-- | Logical database name.
rhttpecDatabaseName :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecDatabaseName = lens _rhttpecDatabaseName (\ s a -> s{_rhttpecDatabaseName = a})

-- | AWS Region for RDS HTTP endpoint.
rhttpecAwsRegion :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecAwsRegion = lens _rhttpecAwsRegion (\ s a -> s{_rhttpecAwsRegion = a})

-- | AWS secret store ARN for database credentials.
rhttpecAwsSecretStoreARN :: Lens' RDSHTTPEndpointConfig (Maybe Text)
rhttpecAwsSecretStoreARN = lens _rhttpecAwsSecretStoreARN (\ s a -> s{_rhttpecAwsSecretStoreARN = a})

instance FromJSON RDSHTTPEndpointConfig where
        parseJSON
          = withObject "RDSHTTPEndpointConfig"
              (\ x ->
                 RDSHTTPEndpointConfig' <$>
                   (x .:? "dbClusterIdentifier") <*> (x .:? "schema")
                     <*> (x .:? "databaseName")
                     <*> (x .:? "awsRegion")
                     <*> (x .:? "awsSecretStoreArn"))

instance Hashable RDSHTTPEndpointConfig where

instance NFData RDSHTTPEndpointConfig where

instance ToJSON RDSHTTPEndpointConfig where
        toJSON RDSHTTPEndpointConfig'{..}
          = object
              (catMaybes
                 [("dbClusterIdentifier" .=) <$>
                    _rhttpecDbClusterIdentifier,
                  ("schema" .=) <$> _rhttpecSchema,
                  ("databaseName" .=) <$> _rhttpecDatabaseName,
                  ("awsRegion" .=) <$> _rhttpecAwsRegion,
                  ("awsSecretStoreArn" .=) <$>
                    _rhttpecAwsSecretStoreARN])

-- | Describes a relational database data source configuration.
--
--
--
-- /See:/ 'relationalDatabaseDataSourceConfig' smart constructor.
data RelationalDatabaseDataSourceConfig =
  RelationalDatabaseDataSourceConfig'
    { _rddscRelationalDatabaseSourceType :: !(Maybe RelationalDatabaseSourceType)
    , _rddscRdsHTTPEndpointConfig :: !(Maybe RDSHTTPEndpointConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelationalDatabaseDataSourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddscRelationalDatabaseSourceType' - Source type for the relational database.     * __RDS_HTTP_ENDPOINT__ : The relational database source type is an Amazon RDS HTTP endpoint.
--
-- * 'rddscRdsHTTPEndpointConfig' - Amazon RDS HTTP endpoint settings.
relationalDatabaseDataSourceConfig
    :: RelationalDatabaseDataSourceConfig
relationalDatabaseDataSourceConfig =
  RelationalDatabaseDataSourceConfig'
    { _rddscRelationalDatabaseSourceType = Nothing
    , _rddscRdsHTTPEndpointConfig = Nothing
    }


-- | Source type for the relational database.     * __RDS_HTTP_ENDPOINT__ : The relational database source type is an Amazon RDS HTTP endpoint.
rddscRelationalDatabaseSourceType :: Lens' RelationalDatabaseDataSourceConfig (Maybe RelationalDatabaseSourceType)
rddscRelationalDatabaseSourceType = lens _rddscRelationalDatabaseSourceType (\ s a -> s{_rddscRelationalDatabaseSourceType = a})

-- | Amazon RDS HTTP endpoint settings.
rddscRdsHTTPEndpointConfig :: Lens' RelationalDatabaseDataSourceConfig (Maybe RDSHTTPEndpointConfig)
rddscRdsHTTPEndpointConfig = lens _rddscRdsHTTPEndpointConfig (\ s a -> s{_rddscRdsHTTPEndpointConfig = a})

instance FromJSON RelationalDatabaseDataSourceConfig
         where
        parseJSON
          = withObject "RelationalDatabaseDataSourceConfig"
              (\ x ->
                 RelationalDatabaseDataSourceConfig' <$>
                   (x .:? "relationalDatabaseSourceType") <*>
                     (x .:? "rdsHttpEndpointConfig"))

instance Hashable RelationalDatabaseDataSourceConfig
         where

instance NFData RelationalDatabaseDataSourceConfig
         where

instance ToJSON RelationalDatabaseDataSourceConfig
         where
        toJSON RelationalDatabaseDataSourceConfig'{..}
          = object
              (catMaybes
                 [("relationalDatabaseSourceType" .=) <$>
                    _rddscRelationalDatabaseSourceType,
                  ("rdsHttpEndpointConfig" .=) <$>
                    _rddscRdsHTTPEndpointConfig])

-- | Describes a resolver.
--
--
--
-- /See:/ 'resolver' smart constructor.
data Resolver =
  Resolver'
    { _rTypeName                :: !(Maybe Text)
    , _rDataSourceName          :: !(Maybe Text)
    , _rRequestMappingTemplate  :: !(Maybe Text)
    , _rKind                    :: !(Maybe ResolverKind)
    , _rResolverARN             :: !(Maybe Text)
    , _rCachingConfig           :: !(Maybe CachingConfig)
    , _rResponseMappingTemplate :: !(Maybe Text)
    , _rFieldName               :: !(Maybe Text)
    , _rSyncConfig              :: !(Maybe SyncConfig)
    , _rPipelineConfig          :: !(Maybe PipelineConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resolver' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rTypeName' - The resolver type name.
--
-- * 'rDataSourceName' - The resolver data source name.
--
-- * 'rRequestMappingTemplate' - The request mapping template.
--
-- * 'rKind' - The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
--
-- * 'rResolverARN' - The resolver ARN.
--
-- * 'rCachingConfig' - The caching configuration for the resolver.
--
-- * 'rResponseMappingTemplate' - The response mapping template.
--
-- * 'rFieldName' - The resolver field name.
--
-- * 'rSyncConfig' - The @SyncConfig@ for a resolver attached to a versioned datasource.
--
-- * 'rPipelineConfig' - The @PipelineConfig@ .
resolver
    :: Resolver
resolver =
  Resolver'
    { _rTypeName = Nothing
    , _rDataSourceName = Nothing
    , _rRequestMappingTemplate = Nothing
    , _rKind = Nothing
    , _rResolverARN = Nothing
    , _rCachingConfig = Nothing
    , _rResponseMappingTemplate = Nothing
    , _rFieldName = Nothing
    , _rSyncConfig = Nothing
    , _rPipelineConfig = Nothing
    }


-- | The resolver type name.
rTypeName :: Lens' Resolver (Maybe Text)
rTypeName = lens _rTypeName (\ s a -> s{_rTypeName = a})

-- | The resolver data source name.
rDataSourceName :: Lens' Resolver (Maybe Text)
rDataSourceName = lens _rDataSourceName (\ s a -> s{_rDataSourceName = a})

-- | The request mapping template.
rRequestMappingTemplate :: Lens' Resolver (Maybe Text)
rRequestMappingTemplate = lens _rRequestMappingTemplate (\ s a -> s{_rRequestMappingTemplate = a})

-- | The resolver type.     * __UNIT__ : A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.     * __PIPELINE__ : A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of @Function@ in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.
rKind :: Lens' Resolver (Maybe ResolverKind)
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The resolver ARN.
rResolverARN :: Lens' Resolver (Maybe Text)
rResolverARN = lens _rResolverARN (\ s a -> s{_rResolverARN = a})

-- | The caching configuration for the resolver.
rCachingConfig :: Lens' Resolver (Maybe CachingConfig)
rCachingConfig = lens _rCachingConfig (\ s a -> s{_rCachingConfig = a})

-- | The response mapping template.
rResponseMappingTemplate :: Lens' Resolver (Maybe Text)
rResponseMappingTemplate = lens _rResponseMappingTemplate (\ s a -> s{_rResponseMappingTemplate = a})

-- | The resolver field name.
rFieldName :: Lens' Resolver (Maybe Text)
rFieldName = lens _rFieldName (\ s a -> s{_rFieldName = a})

-- | The @SyncConfig@ for a resolver attached to a versioned datasource.
rSyncConfig :: Lens' Resolver (Maybe SyncConfig)
rSyncConfig = lens _rSyncConfig (\ s a -> s{_rSyncConfig = a})

-- | The @PipelineConfig@ .
rPipelineConfig :: Lens' Resolver (Maybe PipelineConfig)
rPipelineConfig = lens _rPipelineConfig (\ s a -> s{_rPipelineConfig = a})

instance FromJSON Resolver where
        parseJSON
          = withObject "Resolver"
              (\ x ->
                 Resolver' <$>
                   (x .:? "typeName") <*> (x .:? "dataSourceName") <*>
                     (x .:? "requestMappingTemplate")
                     <*> (x .:? "kind")
                     <*> (x .:? "resolverArn")
                     <*> (x .:? "cachingConfig")
                     <*> (x .:? "responseMappingTemplate")
                     <*> (x .:? "fieldName")
                     <*> (x .:? "syncConfig")
                     <*> (x .:? "pipelineConfig"))

instance Hashable Resolver where

instance NFData Resolver where

-- | Describes a Sync configuration for a resolver.
--
--
-- Contains information on which Conflict Detection as well as Resolution strategy should be performed when the resolver is invoked.
--
--
-- /See:/ 'syncConfig' smart constructor.
data SyncConfig =
  SyncConfig'
    { _scConflictHandler             :: !(Maybe ConflictHandlerType)
    , _scConflictDetection           :: !(Maybe ConflictDetectionType)
    , _scLambdaConflictHandlerConfig :: !(Maybe LambdaConflictHandlerConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SyncConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scConflictHandler' - The Conflict Resolution strategy to perform in the event of a conflict.     * __OPTIMISTIC_CONCURRENCY__ : Resolve conflicts by rejecting mutations when versions do not match the latest version at the server.     * __AUTOMERGE__ : Resolve conflicts with the Automerge conflict resolution strategy.     * __LAMBDA__ : Resolve conflicts with a Lambda function supplied in the LambdaConflictHandlerConfig.
--
-- * 'scConflictDetection' - The Conflict Detection strategy to use.     * __VERSION__ : Detect conflicts based on object versions for this resolver.     * __NONE__ : Do not detect conflicts when executing this resolver.
--
-- * 'scLambdaConflictHandlerConfig' - The @LambdaConflictHandlerConfig@ when configuring LAMBDA as the Conflict Handler.
syncConfig
    :: SyncConfig
syncConfig =
  SyncConfig'
    { _scConflictHandler = Nothing
    , _scConflictDetection = Nothing
    , _scLambdaConflictHandlerConfig = Nothing
    }


-- | The Conflict Resolution strategy to perform in the event of a conflict.     * __OPTIMISTIC_CONCURRENCY__ : Resolve conflicts by rejecting mutations when versions do not match the latest version at the server.     * __AUTOMERGE__ : Resolve conflicts with the Automerge conflict resolution strategy.     * __LAMBDA__ : Resolve conflicts with a Lambda function supplied in the LambdaConflictHandlerConfig.
scConflictHandler :: Lens' SyncConfig (Maybe ConflictHandlerType)
scConflictHandler = lens _scConflictHandler (\ s a -> s{_scConflictHandler = a})

-- | The Conflict Detection strategy to use.     * __VERSION__ : Detect conflicts based on object versions for this resolver.     * __NONE__ : Do not detect conflicts when executing this resolver.
scConflictDetection :: Lens' SyncConfig (Maybe ConflictDetectionType)
scConflictDetection = lens _scConflictDetection (\ s a -> s{_scConflictDetection = a})

-- | The @LambdaConflictHandlerConfig@ when configuring LAMBDA as the Conflict Handler.
scLambdaConflictHandlerConfig :: Lens' SyncConfig (Maybe LambdaConflictHandlerConfig)
scLambdaConflictHandlerConfig = lens _scLambdaConflictHandlerConfig (\ s a -> s{_scLambdaConflictHandlerConfig = a})

instance FromJSON SyncConfig where
        parseJSON
          = withObject "SyncConfig"
              (\ x ->
                 SyncConfig' <$>
                   (x .:? "conflictHandler") <*>
                     (x .:? "conflictDetection")
                     <*> (x .:? "lambdaConflictHandlerConfig"))

instance Hashable SyncConfig where

instance NFData SyncConfig where

instance ToJSON SyncConfig where
        toJSON SyncConfig'{..}
          = object
              (catMaybes
                 [("conflictHandler" .=) <$> _scConflictHandler,
                  ("conflictDetection" .=) <$> _scConflictDetection,
                  ("lambdaConflictHandlerConfig" .=) <$>
                    _scLambdaConflictHandlerConfig])

-- | Describes a type.
--
--
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tArn         :: !(Maybe Text)
    , _tDefinition  :: !(Maybe Text)
    , _tFormat      :: !(Maybe TypeDefinitionFormat)
    , _tName        :: !(Maybe Text)
    , _tDescription :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tArn' - The type ARN.
--
-- * 'tDefinition' - The type definition.
--
-- * 'tFormat' - The type format: SDL or JSON.
--
-- * 'tName' - The type name.
--
-- * 'tDescription' - The type description.
type'
    :: Type
type' =
  Type'
    { _tArn = Nothing
    , _tDefinition = Nothing
    , _tFormat = Nothing
    , _tName = Nothing
    , _tDescription = Nothing
    }


-- | The type ARN.
tArn :: Lens' Type (Maybe Text)
tArn = lens _tArn (\ s a -> s{_tArn = a})

-- | The type definition.
tDefinition :: Lens' Type (Maybe Text)
tDefinition = lens _tDefinition (\ s a -> s{_tDefinition = a})

-- | The type format: SDL or JSON.
tFormat :: Lens' Type (Maybe TypeDefinitionFormat)
tFormat = lens _tFormat (\ s a -> s{_tFormat = a})

-- | The type name.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | The type description.
tDescription :: Lens' Type (Maybe Text)
tDescription = lens _tDescription (\ s a -> s{_tDescription = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ x ->
                 Type' <$>
                   (x .:? "arn") <*> (x .:? "definition") <*>
                     (x .:? "format")
                     <*> (x .:? "name")
                     <*> (x .:? "description"))

instance Hashable Type where

instance NFData Type where

-- | Describes an Amazon Cognito user pool configuration.
--
--
--
-- /See:/ 'userPoolConfig' smart constructor.
data UserPoolConfig =
  UserPoolConfig'
    { _upcAppIdClientRegex :: !(Maybe Text)
    , _upcUserPoolId       :: !Text
    , _upcAwsRegion        :: !Text
    , _upcDefaultAction    :: !DefaultAction
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserPoolConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upcAppIdClientRegex' - A regular expression for validating the incoming Amazon Cognito user pool app client ID.
--
-- * 'upcUserPoolId' - The user pool ID.
--
-- * 'upcAwsRegion' - The AWS Region in which the user pool was created.
--
-- * 'upcDefaultAction' - The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.
userPoolConfig
    :: Text -- ^ 'upcUserPoolId'
    -> Text -- ^ 'upcAwsRegion'
    -> DefaultAction -- ^ 'upcDefaultAction'
    -> UserPoolConfig
userPoolConfig pUserPoolId_ pAwsRegion_ pDefaultAction_ =
  UserPoolConfig'
    { _upcAppIdClientRegex = Nothing
    , _upcUserPoolId = pUserPoolId_
    , _upcAwsRegion = pAwsRegion_
    , _upcDefaultAction = pDefaultAction_
    }


-- | A regular expression for validating the incoming Amazon Cognito user pool app client ID.
upcAppIdClientRegex :: Lens' UserPoolConfig (Maybe Text)
upcAppIdClientRegex = lens _upcAppIdClientRegex (\ s a -> s{_upcAppIdClientRegex = a})

-- | The user pool ID.
upcUserPoolId :: Lens' UserPoolConfig Text
upcUserPoolId = lens _upcUserPoolId (\ s a -> s{_upcUserPoolId = a})

-- | The AWS Region in which the user pool was created.
upcAwsRegion :: Lens' UserPoolConfig Text
upcAwsRegion = lens _upcAwsRegion (\ s a -> s{_upcAwsRegion = a})

-- | The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.
upcDefaultAction :: Lens' UserPoolConfig DefaultAction
upcDefaultAction = lens _upcDefaultAction (\ s a -> s{_upcDefaultAction = a})

instance FromJSON UserPoolConfig where
        parseJSON
          = withObject "UserPoolConfig"
              (\ x ->
                 UserPoolConfig' <$>
                   (x .:? "appIdClientRegex") <*> (x .: "userPoolId")
                     <*> (x .: "awsRegion")
                     <*> (x .: "defaultAction"))

instance Hashable UserPoolConfig where

instance NFData UserPoolConfig where

instance ToJSON UserPoolConfig where
        toJSON UserPoolConfig'{..}
          = object
              (catMaybes
                 [("appIdClientRegex" .=) <$> _upcAppIdClientRegex,
                  Just ("userPoolId" .= _upcUserPoolId),
                  Just ("awsRegion" .= _upcAwsRegion),
                  Just ("defaultAction" .= _upcDefaultAction)])
