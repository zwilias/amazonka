{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.Product where

import Network.AWS.DMS.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a quota for an AWS account, for example, the number of replication instances allowed.
--
--
--
-- /See:/ 'accountQuota' smart constructor.
data AccountQuota =
  AccountQuota'
    { _aqMax              :: !(Maybe Integer)
    , _aqUsed             :: !(Maybe Integer)
    , _aqAccountQuotaName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountQuota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aqMax' - The maximum allowed value for the quota.
--
-- * 'aqUsed' - The amount currently used toward the quota maximum.
--
-- * 'aqAccountQuotaName' - The name of the AWS DMS quota for this AWS account.
accountQuota
    :: AccountQuota
accountQuota =
  AccountQuota'
    {_aqMax = Nothing, _aqUsed = Nothing, _aqAccountQuotaName = Nothing}


-- | The maximum allowed value for the quota.
aqMax :: Lens' AccountQuota (Maybe Integer)
aqMax = lens _aqMax (\ s a -> s{_aqMax = a})

-- | The amount currently used toward the quota maximum.
aqUsed :: Lens' AccountQuota (Maybe Integer)
aqUsed = lens _aqUsed (\ s a -> s{_aqUsed = a})

-- | The name of the AWS DMS quota for this AWS account.
aqAccountQuotaName :: Lens' AccountQuota (Maybe Text)
aqAccountQuotaName = lens _aqAccountQuotaName (\ s a -> s{_aqAccountQuotaName = a})

instance FromJSON AccountQuota where
        parseJSON
          = withObject "AccountQuota"
              (\ x ->
                 AccountQuota' <$>
                   (x .:? "Max") <*> (x .:? "Used") <*>
                     (x .:? "AccountQuotaName"))

instance Hashable AccountQuota where

instance NFData AccountQuota where

-- | The name of the Availability Zone for use during database migration.
--
--
--
-- /See:/ 'availabilityZone' smart constructor.
newtype AvailabilityZone =
  AvailabilityZone'
    { _azName :: Maybe Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AvailabilityZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'azName' - The name of the Availability Zone.
availabilityZone
    :: AvailabilityZone
availabilityZone = AvailabilityZone' {_azName = Nothing}


-- | The name of the Availability Zone.
azName :: Lens' AvailabilityZone (Maybe Text)
azName = lens _azName (\ s a -> s{_azName = a})

instance FromJSON AvailabilityZone where
        parseJSON
          = withObject "AvailabilityZone"
              (\ x -> AvailabilityZone' <$> (x .:? "Name"))

instance Hashable AvailabilityZone where

instance NFData AvailabilityZone where

-- | The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.
--
--
--
-- /See:/ 'certificate' smart constructor.
data Certificate =
  Certificate'
    { _cCertificateOwner        :: !(Maybe Text)
    , _cSigningAlgorithm        :: !(Maybe Text)
    , _cValidFromDate           :: !(Maybe POSIX)
    , _cCertificatePem          :: !(Maybe Text)
    , _cCertificateARN          :: !(Maybe Text)
    , _cCertificateCreationDate :: !(Maybe POSIX)
    , _cCertificateIdentifier   :: !(Maybe Text)
    , _cCertificateWallet       :: !(Maybe Base64)
    , _cKeyLength               :: !(Maybe Int)
    , _cValidToDate             :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Certificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCertificateOwner' - The owner of the certificate.
--
-- * 'cSigningAlgorithm' - The signing algorithm for the certificate.
--
-- * 'cValidFromDate' - The beginning date that the certificate is valid.
--
-- * 'cCertificatePem' - The contents of a @.pem@ file, which contains an X.509 certificate.
--
-- * 'cCertificateARN' - The Amazon Resource Name (ARN) for the certificate.
--
-- * 'cCertificateCreationDate' - The date that the certificate was created.
--
-- * 'cCertificateIdentifier' - A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'cCertificateWallet' - The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'cKeyLength' - The key length of the cryptographic algorithm being used.
--
-- * 'cValidToDate' - The final date that the certificate is valid.
certificate
    :: Certificate
certificate =
  Certificate'
    { _cCertificateOwner = Nothing
    , _cSigningAlgorithm = Nothing
    , _cValidFromDate = Nothing
    , _cCertificatePem = Nothing
    , _cCertificateARN = Nothing
    , _cCertificateCreationDate = Nothing
    , _cCertificateIdentifier = Nothing
    , _cCertificateWallet = Nothing
    , _cKeyLength = Nothing
    , _cValidToDate = Nothing
    }


-- | The owner of the certificate.
cCertificateOwner :: Lens' Certificate (Maybe Text)
cCertificateOwner = lens _cCertificateOwner (\ s a -> s{_cCertificateOwner = a})

-- | The signing algorithm for the certificate.
cSigningAlgorithm :: Lens' Certificate (Maybe Text)
cSigningAlgorithm = lens _cSigningAlgorithm (\ s a -> s{_cSigningAlgorithm = a})

-- | The beginning date that the certificate is valid.
cValidFromDate :: Lens' Certificate (Maybe UTCTime)
cValidFromDate = lens _cValidFromDate (\ s a -> s{_cValidFromDate = a}) . mapping _Time

-- | The contents of a @.pem@ file, which contains an X.509 certificate.
cCertificatePem :: Lens' Certificate (Maybe Text)
cCertificatePem = lens _cCertificatePem (\ s a -> s{_cCertificatePem = a})

-- | The Amazon Resource Name (ARN) for the certificate.
cCertificateARN :: Lens' Certificate (Maybe Text)
cCertificateARN = lens _cCertificateARN (\ s a -> s{_cCertificateARN = a})

-- | The date that the certificate was created.
cCertificateCreationDate :: Lens' Certificate (Maybe UTCTime)
cCertificateCreationDate = lens _cCertificateCreationDate (\ s a -> s{_cCertificateCreationDate = a}) . mapping _Time

-- | A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
cCertificateIdentifier :: Lens' Certificate (Maybe Text)
cCertificateIdentifier = lens _cCertificateIdentifier (\ s a -> s{_cCertificateIdentifier = a})

-- | The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
cCertificateWallet :: Lens' Certificate (Maybe ByteString)
cCertificateWallet = lens _cCertificateWallet (\ s a -> s{_cCertificateWallet = a}) . mapping _Base64

-- | The key length of the cryptographic algorithm being used.
cKeyLength :: Lens' Certificate (Maybe Int)
cKeyLength = lens _cKeyLength (\ s a -> s{_cKeyLength = a})

-- | The final date that the certificate is valid.
cValidToDate :: Lens' Certificate (Maybe UTCTime)
cValidToDate = lens _cValidToDate (\ s a -> s{_cValidToDate = a}) . mapping _Time

instance FromJSON Certificate where
        parseJSON
          = withObject "Certificate"
              (\ x ->
                 Certificate' <$>
                   (x .:? "CertificateOwner") <*>
                     (x .:? "SigningAlgorithm")
                     <*> (x .:? "ValidFromDate")
                     <*> (x .:? "CertificatePem")
                     <*> (x .:? "CertificateArn")
                     <*> (x .:? "CertificateCreationDate")
                     <*> (x .:? "CertificateIdentifier")
                     <*> (x .:? "CertificateWallet")
                     <*> (x .:? "KeyLength")
                     <*> (x .:? "ValidToDate"))

instance Hashable Certificate where

instance NFData Certificate where

-- | Status of the connection between an endpoint and a replication instance, including Amazon Resource Names (ARNs) and the last error message issued.
--
--
--
-- /See:/ 'connection' smart constructor.
data Connection =
  Connection'
    { _cStatus                        :: !(Maybe Text)
    , _cReplicationInstanceARN        :: !(Maybe Text)
    , _cEndpointIdentifier            :: !(Maybe Text)
    , _cReplicationInstanceIdentifier :: !(Maybe Text)
    , _cEndpointARN                   :: !(Maybe Text)
    , _cLastFailureMessage            :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus' - The connection status.
--
-- * 'cReplicationInstanceARN' - The ARN of the replication instance.
--
-- * 'cEndpointIdentifier' - The identifier of the endpoint. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'cReplicationInstanceIdentifier' - The replication instance identifier. This parameter is stored as a lowercase string.
--
-- * 'cEndpointARN' - The ARN string that uniquely identifies the endpoint.
--
-- * 'cLastFailureMessage' - The error message when the connection last failed.
connection
    :: Connection
connection =
  Connection'
    { _cStatus = Nothing
    , _cReplicationInstanceARN = Nothing
    , _cEndpointIdentifier = Nothing
    , _cReplicationInstanceIdentifier = Nothing
    , _cEndpointARN = Nothing
    , _cLastFailureMessage = Nothing
    }


-- | The connection status.
cStatus :: Lens' Connection (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The ARN of the replication instance.
cReplicationInstanceARN :: Lens' Connection (Maybe Text)
cReplicationInstanceARN = lens _cReplicationInstanceARN (\ s a -> s{_cReplicationInstanceARN = a})

-- | The identifier of the endpoint. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
cEndpointIdentifier :: Lens' Connection (Maybe Text)
cEndpointIdentifier = lens _cEndpointIdentifier (\ s a -> s{_cEndpointIdentifier = a})

-- | The replication instance identifier. This parameter is stored as a lowercase string.
cReplicationInstanceIdentifier :: Lens' Connection (Maybe Text)
cReplicationInstanceIdentifier = lens _cReplicationInstanceIdentifier (\ s a -> s{_cReplicationInstanceIdentifier = a})

-- | The ARN string that uniquely identifies the endpoint.
cEndpointARN :: Lens' Connection (Maybe Text)
cEndpointARN = lens _cEndpointARN (\ s a -> s{_cEndpointARN = a})

-- | The error message when the connection last failed.
cLastFailureMessage :: Lens' Connection (Maybe Text)
cLastFailureMessage = lens _cLastFailureMessage (\ s a -> s{_cLastFailureMessage = a})

instance FromJSON Connection where
        parseJSON
          = withObject "Connection"
              (\ x ->
                 Connection' <$>
                   (x .:? "Status") <*> (x .:? "ReplicationInstanceArn")
                     <*> (x .:? "EndpointIdentifier")
                     <*> (x .:? "ReplicationInstanceIdentifier")
                     <*> (x .:? "EndpointArn")
                     <*> (x .:? "LastFailureMessage"))

instance Hashable Connection where

instance NFData Connection where

-- | The settings in JSON format for the DMS Transfer type source endpoint.
--
--
--
-- /See:/ 'dmsTransferSettings' smart constructor.
data DmsTransferSettings =
  DmsTransferSettings'
    { _dtsServiceAccessRoleARN :: !(Maybe Text)
    , _dtsBucketName           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DmsTransferSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsServiceAccessRoleARN' - The IAM role that has permission to access the Amazon S3 bucket.
--
-- * 'dtsBucketName' - The name of the S3 bucket to use.
dmsTransferSettings
    :: DmsTransferSettings
dmsTransferSettings =
  DmsTransferSettings'
    {_dtsServiceAccessRoleARN = Nothing, _dtsBucketName = Nothing}


-- | The IAM role that has permission to access the Amazon S3 bucket.
dtsServiceAccessRoleARN :: Lens' DmsTransferSettings (Maybe Text)
dtsServiceAccessRoleARN = lens _dtsServiceAccessRoleARN (\ s a -> s{_dtsServiceAccessRoleARN = a})

-- | The name of the S3 bucket to use.
dtsBucketName :: Lens' DmsTransferSettings (Maybe Text)
dtsBucketName = lens _dtsBucketName (\ s a -> s{_dtsBucketName = a})

instance FromJSON DmsTransferSettings where
        parseJSON
          = withObject "DmsTransferSettings"
              (\ x ->
                 DmsTransferSettings' <$>
                   (x .:? "ServiceAccessRoleArn") <*>
                     (x .:? "BucketName"))

instance Hashable DmsTransferSettings where

instance NFData DmsTransferSettings where

instance ToJSON DmsTransferSettings where
        toJSON DmsTransferSettings'{..}
          = object
              (catMaybes
                 [("ServiceAccessRoleArn" .=) <$>
                    _dtsServiceAccessRoleARN,
                  ("BucketName" .=) <$> _dtsBucketName])

-- | Provides the Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role used to define an Amazon DynamoDB target endpoint.
--
--
--
-- /See:/ 'dynamoDBSettings' smart constructor.
newtype DynamoDBSettings =
  DynamoDBSettings'
    { _ddsServiceAccessRoleARN :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamoDBSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by the service access IAM role.
dynamoDBSettings
    :: Text -- ^ 'ddsServiceAccessRoleARN'
    -> DynamoDBSettings
dynamoDBSettings pServiceAccessRoleARN_ =
  DynamoDBSettings' {_ddsServiceAccessRoleARN = pServiceAccessRoleARN_}


-- | The Amazon Resource Name (ARN) used by the service access IAM role.
ddsServiceAccessRoleARN :: Lens' DynamoDBSettings Text
ddsServiceAccessRoleARN = lens _ddsServiceAccessRoleARN (\ s a -> s{_ddsServiceAccessRoleARN = a})

instance FromJSON DynamoDBSettings where
        parseJSON
          = withObject "DynamoDBSettings"
              (\ x ->
                 DynamoDBSettings' <$> (x .: "ServiceAccessRoleArn"))

instance Hashable DynamoDBSettings where

instance NFData DynamoDBSettings where

instance ToJSON DynamoDBSettings where
        toJSON DynamoDBSettings'{..}
          = object
              (catMaybes
                 [Just
                    ("ServiceAccessRoleArn" .=
                       _ddsServiceAccessRoleARN)])

-- | Provides information that defines an Elasticsearch endpoint.
--
--
--
-- /See:/ 'elasticsearchSettings' smart constructor.
data ElasticsearchSettings =
  ElasticsearchSettings'
    { _esFullLoadErrorPercentage :: !(Maybe Int)
    , _esErrorRetryDuration      :: !(Maybe Int)
    , _esServiceAccessRoleARN    :: !Text
    , _esEndpointURI             :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ElasticsearchSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esFullLoadErrorPercentage' - The maximum percentage of records that can fail to be written before a full load operation stops.
--
-- * 'esErrorRetryDuration' - The maximum number of seconds for which DMS retries failed API requests to the Elasticsearch cluster.
--
-- * 'esServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by service to access the IAM role.
--
-- * 'esEndpointURI' - The endpoint for the Elasticsearch cluster.
elasticsearchSettings
    :: Text -- ^ 'esServiceAccessRoleARN'
    -> Text -- ^ 'esEndpointURI'
    -> ElasticsearchSettings
elasticsearchSettings pServiceAccessRoleARN_ pEndpointURI_ =
  ElasticsearchSettings'
    { _esFullLoadErrorPercentage = Nothing
    , _esErrorRetryDuration = Nothing
    , _esServiceAccessRoleARN = pServiceAccessRoleARN_
    , _esEndpointURI = pEndpointURI_
    }


-- | The maximum percentage of records that can fail to be written before a full load operation stops.
esFullLoadErrorPercentage :: Lens' ElasticsearchSettings (Maybe Int)
esFullLoadErrorPercentage = lens _esFullLoadErrorPercentage (\ s a -> s{_esFullLoadErrorPercentage = a})

-- | The maximum number of seconds for which DMS retries failed API requests to the Elasticsearch cluster.
esErrorRetryDuration :: Lens' ElasticsearchSettings (Maybe Int)
esErrorRetryDuration = lens _esErrorRetryDuration (\ s a -> s{_esErrorRetryDuration = a})

-- | The Amazon Resource Name (ARN) used by service to access the IAM role.
esServiceAccessRoleARN :: Lens' ElasticsearchSettings Text
esServiceAccessRoleARN = lens _esServiceAccessRoleARN (\ s a -> s{_esServiceAccessRoleARN = a})

-- | The endpoint for the Elasticsearch cluster.
esEndpointURI :: Lens' ElasticsearchSettings Text
esEndpointURI = lens _esEndpointURI (\ s a -> s{_esEndpointURI = a})

instance FromJSON ElasticsearchSettings where
        parseJSON
          = withObject "ElasticsearchSettings"
              (\ x ->
                 ElasticsearchSettings' <$>
                   (x .:? "FullLoadErrorPercentage") <*>
                     (x .:? "ErrorRetryDuration")
                     <*> (x .: "ServiceAccessRoleArn")
                     <*> (x .: "EndpointUri"))

instance Hashable ElasticsearchSettings where

instance NFData ElasticsearchSettings where

instance ToJSON ElasticsearchSettings where
        toJSON ElasticsearchSettings'{..}
          = object
              (catMaybes
                 [("FullLoadErrorPercentage" .=) <$>
                    _esFullLoadErrorPercentage,
                  ("ErrorRetryDuration" .=) <$> _esErrorRetryDuration,
                  Just
                    ("ServiceAccessRoleArn" .= _esServiceAccessRoleARN),
                  Just ("EndpointUri" .= _esEndpointURI)])

-- | Describes an endpoint of a database instance in response to operations such as the following:
--
--
--     * @CreateEndpoint@
--
--     * @DescribeEndpoint@
--
--     * @DescribeEndpointTypes@
--
--     * @ModifyEndpoint@
--
--
--
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint =
  Endpoint'
    { _eStatus                    :: !(Maybe Text)
    , _eDmsTransferSettings       :: !(Maybe DmsTransferSettings)
    , _eServerName                :: !(Maybe Text)
    , _eCertificateARN            :: !(Maybe Text)
    , _eServiceAccessRoleARN      :: !(Maybe Text)
    , _eEngineDisplayName         :: !(Maybe Text)
    , _eExtraConnectionAttributes :: !(Maybe Text)
    , _eKafkaSettings             :: !(Maybe KafkaSettings)
    , _eEndpointType              :: !(Maybe ReplicationEndpointTypeValue)
    , _eRedshiftSettings          :: !(Maybe RedshiftSettings)
    , _eElasticsearchSettings     :: !(Maybe ElasticsearchSettings)
    , _eUsername                  :: !(Maybe Text)
    , _eExternalTableDefinition   :: !(Maybe Text)
    , _eEngineName                :: !(Maybe Text)
    , _eNeptuneSettings           :: !(Maybe NeptuneSettings)
    , _eKMSKeyId                  :: !(Maybe Text)
    , _eMongoDBSettings           :: !(Maybe MongoDBSettings)
    , _eSSLMode                   :: !(Maybe DmsSSLModeValue)
    , _eDatabaseName              :: !(Maybe Text)
    , _eS3Settings                :: !(Maybe S3Settings)
    , _eKinesisSettings           :: !(Maybe KinesisSettings)
    , _eEndpointIdentifier        :: !(Maybe Text)
    , _eExternalId                :: !(Maybe Text)
    , _eDynamoDBSettings          :: !(Maybe DynamoDBSettings)
    , _eEndpointARN               :: !(Maybe Text)
    , _ePort                      :: !(Maybe Int)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eStatus' - The status of the endpoint.
--
-- * 'eDmsTransferSettings' - The settings in JSON format for the DMS transfer type of source endpoint.  Possible settings include the following:     * @ServiceAccessRoleArn@ - The IAM role that has permission to access the Amazon S3 bucket.     * @BucketName@ - The name of the S3 bucket to use.     * @CompressionType@ - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to @NONE@ (the default). To keep the files uncompressed, don't use this value. Shorthand syntax for these settings is as follows: @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@  JSON syntax for these settings is as follows: @{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } @
--
-- * 'eServerName' - The name of the server at the endpoint.
--
-- * 'eCertificateARN' - The Amazon Resource Name (ARN) used for SSL connection to the endpoint.
--
-- * 'eServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by the service access IAM role.
--
-- * 'eEngineDisplayName' - The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
--
-- * 'eExtraConnectionAttributes' - Additional connection attributes used to connect to the endpoint.
--
-- * 'eKafkaSettings' - The settings for the Apache Kafka target endpoint. For more information, see the @KafkaSettings@ structure.
--
-- * 'eEndpointType' - The type of endpoint. Valid values are @source@ and @target@ .
--
-- * 'eRedshiftSettings' - Settings for the Amazon Redshift endpoint.
--
-- * 'eElasticsearchSettings' - The settings for the Elasticsearch source endpoint. For more information, see the @ElasticsearchSettings@ structure.
--
-- * 'eUsername' - The user name used to connect to the endpoint.
--
-- * 'eExternalTableDefinition' - The external table definition.
--
-- * 'eEngineName' - The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , and @"sqlserver"@ .
--
-- * 'eNeptuneSettings' - The settings for the MongoDB source endpoint. For more information, see the @NeptuneSettings@ structure.
--
-- * 'eKMSKeyId' - An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'eMongoDBSettings' - The settings for the MongoDB source endpoint. For more information, see the @MongoDbSettings@ structure.
--
-- * 'eSSLMode' - The SSL mode used to connect to the endpoint. The default value is @none@ .
--
-- * 'eDatabaseName' - The name of the database at the endpoint.
--
-- * 'eS3Settings' - The settings for the S3 target endpoint. For more information, see the @S3Settings@ structure.
--
-- * 'eKinesisSettings' - The settings for the Amazon Kinesis target endpoint. For more information, see the @KinesisSettings@ structure.
--
-- * 'eEndpointIdentifier' - The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'eExternalId' - Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account.
--
-- * 'eDynamoDBSettings' - The settings for the target DynamoDB database. For more information, see the @DynamoDBSettings@ structure.
--
-- * 'eEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
--
-- * 'ePort' - The port value used to access the endpoint.
endpoint
    :: Endpoint
endpoint =
  Endpoint'
    { _eStatus = Nothing
    , _eDmsTransferSettings = Nothing
    , _eServerName = Nothing
    , _eCertificateARN = Nothing
    , _eServiceAccessRoleARN = Nothing
    , _eEngineDisplayName = Nothing
    , _eExtraConnectionAttributes = Nothing
    , _eKafkaSettings = Nothing
    , _eEndpointType = Nothing
    , _eRedshiftSettings = Nothing
    , _eElasticsearchSettings = Nothing
    , _eUsername = Nothing
    , _eExternalTableDefinition = Nothing
    , _eEngineName = Nothing
    , _eNeptuneSettings = Nothing
    , _eKMSKeyId = Nothing
    , _eMongoDBSettings = Nothing
    , _eSSLMode = Nothing
    , _eDatabaseName = Nothing
    , _eS3Settings = Nothing
    , _eKinesisSettings = Nothing
    , _eEndpointIdentifier = Nothing
    , _eExternalId = Nothing
    , _eDynamoDBSettings = Nothing
    , _eEndpointARN = Nothing
    , _ePort = Nothing
    }


-- | The status of the endpoint.
eStatus :: Lens' Endpoint (Maybe Text)
eStatus = lens _eStatus (\ s a -> s{_eStatus = a})

-- | The settings in JSON format for the DMS transfer type of source endpoint.  Possible settings include the following:     * @ServiceAccessRoleArn@ - The IAM role that has permission to access the Amazon S3 bucket.     * @BucketName@ - The name of the S3 bucket to use.     * @CompressionType@ - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to @NONE@ (the default). To keep the files uncompressed, don't use this value. Shorthand syntax for these settings is as follows: @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@  JSON syntax for these settings is as follows: @{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } @
eDmsTransferSettings :: Lens' Endpoint (Maybe DmsTransferSettings)
eDmsTransferSettings = lens _eDmsTransferSettings (\ s a -> s{_eDmsTransferSettings = a})

-- | The name of the server at the endpoint.
eServerName :: Lens' Endpoint (Maybe Text)
eServerName = lens _eServerName (\ s a -> s{_eServerName = a})

-- | The Amazon Resource Name (ARN) used for SSL connection to the endpoint.
eCertificateARN :: Lens' Endpoint (Maybe Text)
eCertificateARN = lens _eCertificateARN (\ s a -> s{_eCertificateARN = a})

-- | The Amazon Resource Name (ARN) used by the service access IAM role.
eServiceAccessRoleARN :: Lens' Endpoint (Maybe Text)
eServiceAccessRoleARN = lens _eServiceAccessRoleARN (\ s a -> s{_eServiceAccessRoleARN = a})

-- | The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
eEngineDisplayName :: Lens' Endpoint (Maybe Text)
eEngineDisplayName = lens _eEngineDisplayName (\ s a -> s{_eEngineDisplayName = a})

-- | Additional connection attributes used to connect to the endpoint.
eExtraConnectionAttributes :: Lens' Endpoint (Maybe Text)
eExtraConnectionAttributes = lens _eExtraConnectionAttributes (\ s a -> s{_eExtraConnectionAttributes = a})

-- | The settings for the Apache Kafka target endpoint. For more information, see the @KafkaSettings@ structure.
eKafkaSettings :: Lens' Endpoint (Maybe KafkaSettings)
eKafkaSettings = lens _eKafkaSettings (\ s a -> s{_eKafkaSettings = a})

-- | The type of endpoint. Valid values are @source@ and @target@ .
eEndpointType :: Lens' Endpoint (Maybe ReplicationEndpointTypeValue)
eEndpointType = lens _eEndpointType (\ s a -> s{_eEndpointType = a})

-- | Settings for the Amazon Redshift endpoint.
eRedshiftSettings :: Lens' Endpoint (Maybe RedshiftSettings)
eRedshiftSettings = lens _eRedshiftSettings (\ s a -> s{_eRedshiftSettings = a})

-- | The settings for the Elasticsearch source endpoint. For more information, see the @ElasticsearchSettings@ structure.
eElasticsearchSettings :: Lens' Endpoint (Maybe ElasticsearchSettings)
eElasticsearchSettings = lens _eElasticsearchSettings (\ s a -> s{_eElasticsearchSettings = a})

-- | The user name used to connect to the endpoint.
eUsername :: Lens' Endpoint (Maybe Text)
eUsername = lens _eUsername (\ s a -> s{_eUsername = a})

-- | The external table definition.
eExternalTableDefinition :: Lens' Endpoint (Maybe Text)
eExternalTableDefinition = lens _eExternalTableDefinition (\ s a -> s{_eExternalTableDefinition = a})

-- | The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , and @"sqlserver"@ .
eEngineName :: Lens' Endpoint (Maybe Text)
eEngineName = lens _eEngineName (\ s a -> s{_eEngineName = a})

-- | The settings for the MongoDB source endpoint. For more information, see the @NeptuneSettings@ structure.
eNeptuneSettings :: Lens' Endpoint (Maybe NeptuneSettings)
eNeptuneSettings = lens _eNeptuneSettings (\ s a -> s{_eNeptuneSettings = a})

-- | An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
eKMSKeyId :: Lens' Endpoint (Maybe Text)
eKMSKeyId = lens _eKMSKeyId (\ s a -> s{_eKMSKeyId = a})

-- | The settings for the MongoDB source endpoint. For more information, see the @MongoDbSettings@ structure.
eMongoDBSettings :: Lens' Endpoint (Maybe MongoDBSettings)
eMongoDBSettings = lens _eMongoDBSettings (\ s a -> s{_eMongoDBSettings = a})

-- | The SSL mode used to connect to the endpoint. The default value is @none@ .
eSSLMode :: Lens' Endpoint (Maybe DmsSSLModeValue)
eSSLMode = lens _eSSLMode (\ s a -> s{_eSSLMode = a})

-- | The name of the database at the endpoint.
eDatabaseName :: Lens' Endpoint (Maybe Text)
eDatabaseName = lens _eDatabaseName (\ s a -> s{_eDatabaseName = a})

-- | The settings for the S3 target endpoint. For more information, see the @S3Settings@ structure.
eS3Settings :: Lens' Endpoint (Maybe S3Settings)
eS3Settings = lens _eS3Settings (\ s a -> s{_eS3Settings = a})

-- | The settings for the Amazon Kinesis target endpoint. For more information, see the @KinesisSettings@ structure.
eKinesisSettings :: Lens' Endpoint (Maybe KinesisSettings)
eKinesisSettings = lens _eKinesisSettings (\ s a -> s{_eKinesisSettings = a})

-- | The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
eEndpointIdentifier :: Lens' Endpoint (Maybe Text)
eEndpointIdentifier = lens _eEndpointIdentifier (\ s a -> s{_eEndpointIdentifier = a})

-- | Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account.
eExternalId :: Lens' Endpoint (Maybe Text)
eExternalId = lens _eExternalId (\ s a -> s{_eExternalId = a})

-- | The settings for the target DynamoDB database. For more information, see the @DynamoDBSettings@ structure.
eDynamoDBSettings :: Lens' Endpoint (Maybe DynamoDBSettings)
eDynamoDBSettings = lens _eDynamoDBSettings (\ s a -> s{_eDynamoDBSettings = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
eEndpointARN :: Lens' Endpoint (Maybe Text)
eEndpointARN = lens _eEndpointARN (\ s a -> s{_eEndpointARN = a})

-- | The port value used to access the endpoint.
ePort :: Lens' Endpoint (Maybe Int)
ePort = lens _ePort (\ s a -> s{_ePort = a})

instance FromJSON Endpoint where
        parseJSON
          = withObject "Endpoint"
              (\ x ->
                 Endpoint' <$>
                   (x .:? "Status") <*> (x .:? "DmsTransferSettings")
                     <*> (x .:? "ServerName")
                     <*> (x .:? "CertificateArn")
                     <*> (x .:? "ServiceAccessRoleArn")
                     <*> (x .:? "EngineDisplayName")
                     <*> (x .:? "ExtraConnectionAttributes")
                     <*> (x .:? "KafkaSettings")
                     <*> (x .:? "EndpointType")
                     <*> (x .:? "RedshiftSettings")
                     <*> (x .:? "ElasticsearchSettings")
                     <*> (x .:? "Username")
                     <*> (x .:? "ExternalTableDefinition")
                     <*> (x .:? "EngineName")
                     <*> (x .:? "NeptuneSettings")
                     <*> (x .:? "KmsKeyId")
                     <*> (x .:? "MongoDbSettings")
                     <*> (x .:? "SslMode")
                     <*> (x .:? "DatabaseName")
                     <*> (x .:? "S3Settings")
                     <*> (x .:? "KinesisSettings")
                     <*> (x .:? "EndpointIdentifier")
                     <*> (x .:? "ExternalId")
                     <*> (x .:? "DynamoDbSettings")
                     <*> (x .:? "EndpointArn")
                     <*> (x .:? "Port"))

instance Hashable Endpoint where

instance NFData Endpoint where

-- | Describes an identifiable significant activity that affects a replication instance or task. This object can provide the message, the available event categories, the date and source of the event, and the AWS DMS resource type.
--
--
--
-- /See:/ 'event' smart constructor.
data Event =
  Event'
    { _eSourceType       :: !(Maybe SourceType)
    , _eSourceIdentifier :: !(Maybe Text)
    , _eDate             :: !(Maybe POSIX)
    , _eEventCategories  :: !(Maybe [Text])
    , _eMessage          :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | endpoint | replication-task
--
-- * 'eSourceIdentifier' - The identifier of an event source.
--
-- * 'eDate' - The date of the event.
--
-- * 'eEventCategories' - The event categories available for the specified source type.
--
-- * 'eMessage' - The event message.
event
    :: Event
event =
  Event'
    { _eSourceType = Nothing
    , _eSourceIdentifier = Nothing
    , _eDate = Nothing
    , _eEventCategories = Nothing
    , _eMessage = Nothing
    }


-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | endpoint | replication-task
eSourceType :: Lens' Event (Maybe SourceType)
eSourceType = lens _eSourceType (\ s a -> s{_eSourceType = a})

-- | The identifier of an event source.
eSourceIdentifier :: Lens' Event (Maybe Text)
eSourceIdentifier = lens _eSourceIdentifier (\ s a -> s{_eSourceIdentifier = a})

-- | The date of the event.
eDate :: Lens' Event (Maybe UTCTime)
eDate = lens _eDate (\ s a -> s{_eDate = a}) . mapping _Time

-- | The event categories available for the specified source type.
eEventCategories :: Lens' Event [Text]
eEventCategories = lens _eEventCategories (\ s a -> s{_eEventCategories = a}) . _Default . _Coerce

-- | The event message.
eMessage :: Lens' Event (Maybe Text)
eMessage = lens _eMessage (\ s a -> s{_eMessage = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ x ->
                 Event' <$>
                   (x .:? "SourceType") <*> (x .:? "SourceIdentifier")
                     <*> (x .:? "Date")
                     <*> (x .:? "EventCategories" .!= mempty)
                     <*> (x .:? "Message"))

instance Hashable Event where

instance NFData Event where

-- | Lists categories of events subscribed to, and generated by, the applicable AWS DMS resource type.
--
--
--
-- /See:/ 'eventCategoryGroup' smart constructor.
data EventCategoryGroup =
  EventCategoryGroup'
    { _ecgSourceType      :: !(Maybe Text)
    , _ecgEventCategories :: !(Maybe [Text])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventCategoryGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecgSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
--
-- * 'ecgEventCategories' - A list of event categories from a source type that you've chosen.
eventCategoryGroup
    :: EventCategoryGroup
eventCategoryGroup =
  EventCategoryGroup' {_ecgSourceType = Nothing, _ecgEventCategories = Nothing}


-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
ecgSourceType :: Lens' EventCategoryGroup (Maybe Text)
ecgSourceType = lens _ecgSourceType (\ s a -> s{_ecgSourceType = a})

-- | A list of event categories from a source type that you've chosen.
ecgEventCategories :: Lens' EventCategoryGroup [Text]
ecgEventCategories = lens _ecgEventCategories (\ s a -> s{_ecgEventCategories = a}) . _Default . _Coerce

instance FromJSON EventCategoryGroup where
        parseJSON
          = withObject "EventCategoryGroup"
              (\ x ->
                 EventCategoryGroup' <$>
                   (x .:? "SourceType") <*>
                     (x .:? "EventCategories" .!= mempty))

instance Hashable EventCategoryGroup where

instance NFData EventCategoryGroup where

-- | Describes an event notification subscription created by the @CreateEventSubscription@ operation.
--
--
--
-- /See:/ 'eventSubscription' smart constructor.
data EventSubscription =
  EventSubscription'
    { _esStatus                   :: !(Maybe Text)
    , _esCustomerAWSId            :: !(Maybe Text)
    , _esCustSubscriptionId       :: !(Maybe Text)
    , _esSNSTopicARN              :: !(Maybe Text)
    , _esEnabled                  :: !(Maybe Bool)
    , _esSourceType               :: !(Maybe Text)
    , _esSubscriptionCreationTime :: !(Maybe Text)
    , _esEventCategoriesList      :: !(Maybe [Text])
    , _esSourceIdsList            :: !(Maybe [Text])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esStatus' - The status of the AWS DMS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
--
-- * 'esCustomerAWSId' - The AWS customer account associated with the AWS DMS event notification subscription.
--
-- * 'esCustSubscriptionId' - The AWS DMS event notification subscription Id.
--
-- * 'esSNSTopicARN' - The topic ARN of the AWS DMS event notification subscription.
--
-- * 'esEnabled' - Boolean value that indicates if the event subscription is enabled.
--
-- * 'esSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
--
-- * 'esSubscriptionCreationTime' - The time the RDS event notification subscription was created.
--
-- * 'esEventCategoriesList' - A lists of event categories.
--
-- * 'esSourceIdsList' - A list of source Ids for the event subscription.
eventSubscription
    :: EventSubscription
eventSubscription =
  EventSubscription'
    { _esStatus = Nothing
    , _esCustomerAWSId = Nothing
    , _esCustSubscriptionId = Nothing
    , _esSNSTopicARN = Nothing
    , _esEnabled = Nothing
    , _esSourceType = Nothing
    , _esSubscriptionCreationTime = Nothing
    , _esEventCategoriesList = Nothing
    , _esSourceIdsList = Nothing
    }


-- | The status of the AWS DMS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
esStatus :: Lens' EventSubscription (Maybe Text)
esStatus = lens _esStatus (\ s a -> s{_esStatus = a})

-- | The AWS customer account associated with the AWS DMS event notification subscription.
esCustomerAWSId :: Lens' EventSubscription (Maybe Text)
esCustomerAWSId = lens _esCustomerAWSId (\ s a -> s{_esCustomerAWSId = a})

-- | The AWS DMS event notification subscription Id.
esCustSubscriptionId :: Lens' EventSubscription (Maybe Text)
esCustSubscriptionId = lens _esCustSubscriptionId (\ s a -> s{_esCustSubscriptionId = a})

-- | The topic ARN of the AWS DMS event notification subscription.
esSNSTopicARN :: Lens' EventSubscription (Maybe Text)
esSNSTopicARN = lens _esSNSTopicARN (\ s a -> s{_esSNSTopicARN = a})

-- | Boolean value that indicates if the event subscription is enabled.
esEnabled :: Lens' EventSubscription (Maybe Bool)
esEnabled = lens _esEnabled (\ s a -> s{_esEnabled = a})

-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
esSourceType :: Lens' EventSubscription (Maybe Text)
esSourceType = lens _esSourceType (\ s a -> s{_esSourceType = a})

-- | The time the RDS event notification subscription was created.
esSubscriptionCreationTime :: Lens' EventSubscription (Maybe Text)
esSubscriptionCreationTime = lens _esSubscriptionCreationTime (\ s a -> s{_esSubscriptionCreationTime = a})

-- | A lists of event categories.
esEventCategoriesList :: Lens' EventSubscription [Text]
esEventCategoriesList = lens _esEventCategoriesList (\ s a -> s{_esEventCategoriesList = a}) . _Default . _Coerce

-- | A list of source Ids for the event subscription.
esSourceIdsList :: Lens' EventSubscription [Text]
esSourceIdsList = lens _esSourceIdsList (\ s a -> s{_esSourceIdsList = a}) . _Default . _Coerce

instance FromJSON EventSubscription where
        parseJSON
          = withObject "EventSubscription"
              (\ x ->
                 EventSubscription' <$>
                   (x .:? "Status") <*> (x .:? "CustomerAwsId") <*>
                     (x .:? "CustSubscriptionId")
                     <*> (x .:? "SnsTopicArn")
                     <*> (x .:? "Enabled")
                     <*> (x .:? "SourceType")
                     <*> (x .:? "SubscriptionCreationTime")
                     <*> (x .:? "EventCategoriesList" .!= mempty)
                     <*> (x .:? "SourceIdsList" .!= mempty))

instance Hashable EventSubscription where

instance NFData EventSubscription where

-- | Identifies the name and value of a source filter object used to limit the number and type of records transferred from your source to your target.
--
--
--
-- /See:/ 'filter'' smart constructor.
data Filter =
  Filter'
    { _fName   :: !Text
    , _fValues :: ![Text]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fName' - The name of the filter.
--
-- * 'fValues' - The filter value.
filter'
    :: Text -- ^ 'fName'
    -> Filter
filter' pName_ = Filter' {_fName = pName_, _fValues = mempty}


-- | The name of the filter.
fName :: Lens' Filter Text
fName = lens _fName (\ s a -> s{_fName = a})

-- | The filter value.
fValues :: Lens' Filter [Text]
fValues = lens _fValues (\ s a -> s{_fValues = a}) . _Coerce

instance Hashable Filter where

instance NFData Filter where

instance ToJSON Filter where
        toJSON Filter'{..}
          = object
              (catMaybes
                 [Just ("Name" .= _fName),
                  Just ("Values" .= _fValues)])

-- | Provides information that describes an Apache Kafka endpoint. This information includes the output format of records applied to the endpoint and details of transaction and control table data information.
--
--
--
-- /See:/ 'kafkaSettings' smart constructor.
data KafkaSettings =
  KafkaSettings'
    { _ksTopic  :: !(Maybe Text)
    , _ksBroker :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'KafkaSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ksTopic' - The topic to which you migrate the data. If you don't specify a topic, AWS DMS specifies @"kafka-default-topic"@ as the migration topic.
--
-- * 'ksBroker' - The broker location and port of the Kafka broker that hosts your Kafka instance. Specify the broker in the form @/broker-hostname-or-ip/ :/port/ @ . For example, @"ec2-12-345-678-901.compute-1.amazonaws.com:2345"@ .
kafkaSettings
    :: KafkaSettings
kafkaSettings = KafkaSettings' {_ksTopic = Nothing, _ksBroker = Nothing}


-- | The topic to which you migrate the data. If you don't specify a topic, AWS DMS specifies @"kafka-default-topic"@ as the migration topic.
ksTopic :: Lens' KafkaSettings (Maybe Text)
ksTopic = lens _ksTopic (\ s a -> s{_ksTopic = a})

-- | The broker location and port of the Kafka broker that hosts your Kafka instance. Specify the broker in the form @/broker-hostname-or-ip/ :/port/ @ . For example, @"ec2-12-345-678-901.compute-1.amazonaws.com:2345"@ .
ksBroker :: Lens' KafkaSettings (Maybe Text)
ksBroker = lens _ksBroker (\ s a -> s{_ksBroker = a})

instance FromJSON KafkaSettings where
        parseJSON
          = withObject "KafkaSettings"
              (\ x ->
                 KafkaSettings' <$>
                   (x .:? "Topic") <*> (x .:? "Broker"))

instance Hashable KafkaSettings where

instance NFData KafkaSettings where

instance ToJSON KafkaSettings where
        toJSON KafkaSettings'{..}
          = object
              (catMaybes
                 [("Topic" .=) <$> _ksTopic,
                  ("Broker" .=) <$> _ksBroker])

-- | Provides information that describes an Amazon Kinesis Data Stream endpoint. This information includes the output format of records applied to the endpoint and details of transaction and control table data information.
--
--
--
-- /See:/ 'kinesisSettings' smart constructor.
data KinesisSettings =
  KinesisSettings'
    { _ksIncludeTransactionDetails   :: !(Maybe Bool)
    , _ksIncludeTableAlterOperations :: !(Maybe Bool)
    , _ksServiceAccessRoleARN        :: !(Maybe Text)
    , _ksPartitionIncludeSchemaTable :: !(Maybe Bool)
    , _ksStreamARN                   :: !(Maybe Text)
    , _ksIncludeControlDetails       :: !(Maybe Bool)
    , _ksIncludePartitionValue       :: !(Maybe Bool)
    , _ksMessageFormat               :: !(Maybe MessageFormatValue)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'KinesisSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ksIncludeTransactionDetails' - Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for @transaction_id@ , previous @transaction_id@ , and @transaction_record_id@ (the record offset within a transaction). The default is @False@ .
--
-- * 'ksIncludeTableAlterOperations' - Includes any data definition language (DDL) operations that change the table in the control data, such as @rename-table@ , @drop-table@ , @add-column@ , @drop-column@ , and @rename-column@ . The default is @False@ .
--
-- * 'ksServiceAccessRoleARN' - The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role that AWS DMS uses to write to the Kinesis data stream.
--
-- * 'ksPartitionIncludeSchemaTable' - Prefixes schema and table names to partition values, when the partition type is @primary-key-type@ . Doing this increases data distribution among Kinesis shards. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same shard, which causes throttling. The default is @False@ .
--
-- * 'ksStreamARN' - The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.
--
-- * 'ksIncludeControlDetails' - Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. The default is @False@ .
--
-- * 'ksIncludePartitionValue' - Shows the partition value within the Kinesis message output, unless the partition type is @schema-table-type@ . The default is @False@ .
--
-- * 'ksMessageFormat' - The output format for the records created on the endpoint. The message format is @JSON@ (default) or @JSON_UNFORMATTED@ (a single line with no tab).
kinesisSettings
    :: KinesisSettings
kinesisSettings =
  KinesisSettings'
    { _ksIncludeTransactionDetails = Nothing
    , _ksIncludeTableAlterOperations = Nothing
    , _ksServiceAccessRoleARN = Nothing
    , _ksPartitionIncludeSchemaTable = Nothing
    , _ksStreamARN = Nothing
    , _ksIncludeControlDetails = Nothing
    , _ksIncludePartitionValue = Nothing
    , _ksMessageFormat = Nothing
    }


-- | Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for @transaction_id@ , previous @transaction_id@ , and @transaction_record_id@ (the record offset within a transaction). The default is @False@ .
ksIncludeTransactionDetails :: Lens' KinesisSettings (Maybe Bool)
ksIncludeTransactionDetails = lens _ksIncludeTransactionDetails (\ s a -> s{_ksIncludeTransactionDetails = a})

-- | Includes any data definition language (DDL) operations that change the table in the control data, such as @rename-table@ , @drop-table@ , @add-column@ , @drop-column@ , and @rename-column@ . The default is @False@ .
ksIncludeTableAlterOperations :: Lens' KinesisSettings (Maybe Bool)
ksIncludeTableAlterOperations = lens _ksIncludeTableAlterOperations (\ s a -> s{_ksIncludeTableAlterOperations = a})

-- | The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role that AWS DMS uses to write to the Kinesis data stream.
ksServiceAccessRoleARN :: Lens' KinesisSettings (Maybe Text)
ksServiceAccessRoleARN = lens _ksServiceAccessRoleARN (\ s a -> s{_ksServiceAccessRoleARN = a})

-- | Prefixes schema and table names to partition values, when the partition type is @primary-key-type@ . Doing this increases data distribution among Kinesis shards. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same shard, which causes throttling. The default is @False@ .
ksPartitionIncludeSchemaTable :: Lens' KinesisSettings (Maybe Bool)
ksPartitionIncludeSchemaTable = lens _ksPartitionIncludeSchemaTable (\ s a -> s{_ksPartitionIncludeSchemaTable = a})

-- | The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.
ksStreamARN :: Lens' KinesisSettings (Maybe Text)
ksStreamARN = lens _ksStreamARN (\ s a -> s{_ksStreamARN = a})

-- | Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. The default is @False@ .
ksIncludeControlDetails :: Lens' KinesisSettings (Maybe Bool)
ksIncludeControlDetails = lens _ksIncludeControlDetails (\ s a -> s{_ksIncludeControlDetails = a})

-- | Shows the partition value within the Kinesis message output, unless the partition type is @schema-table-type@ . The default is @False@ .
ksIncludePartitionValue :: Lens' KinesisSettings (Maybe Bool)
ksIncludePartitionValue = lens _ksIncludePartitionValue (\ s a -> s{_ksIncludePartitionValue = a})

-- | The output format for the records created on the endpoint. The message format is @JSON@ (default) or @JSON_UNFORMATTED@ (a single line with no tab).
ksMessageFormat :: Lens' KinesisSettings (Maybe MessageFormatValue)
ksMessageFormat = lens _ksMessageFormat (\ s a -> s{_ksMessageFormat = a})

instance FromJSON KinesisSettings where
        parseJSON
          = withObject "KinesisSettings"
              (\ x ->
                 KinesisSettings' <$>
                   (x .:? "IncludeTransactionDetails") <*>
                     (x .:? "IncludeTableAlterOperations")
                     <*> (x .:? "ServiceAccessRoleArn")
                     <*> (x .:? "PartitionIncludeSchemaTable")
                     <*> (x .:? "StreamArn")
                     <*> (x .:? "IncludeControlDetails")
                     <*> (x .:? "IncludePartitionValue")
                     <*> (x .:? "MessageFormat"))

instance Hashable KinesisSettings where

instance NFData KinesisSettings where

instance ToJSON KinesisSettings where
        toJSON KinesisSettings'{..}
          = object
              (catMaybes
                 [("IncludeTransactionDetails" .=) <$>
                    _ksIncludeTransactionDetails,
                  ("IncludeTableAlterOperations" .=) <$>
                    _ksIncludeTableAlterOperations,
                  ("ServiceAccessRoleArn" .=) <$>
                    _ksServiceAccessRoleARN,
                  ("PartitionIncludeSchemaTable" .=) <$>
                    _ksPartitionIncludeSchemaTable,
                  ("StreamArn" .=) <$> _ksStreamARN,
                  ("IncludeControlDetails" .=) <$>
                    _ksIncludeControlDetails,
                  ("IncludePartitionValue" .=) <$>
                    _ksIncludePartitionValue,
                  ("MessageFormat" .=) <$> _ksMessageFormat])

-- | Provides information that defines a MongoDB endpoint.
--
--
--
-- /See:/ 'mongoDBSettings' smart constructor.
data MongoDBSettings =
  MongoDBSettings'
    { _mdsServerName        :: !(Maybe Text)
    , _mdsAuthMechanism     :: !(Maybe AuthMechanismValue)
    , _mdsUsername          :: !(Maybe Text)
    , _mdsKMSKeyId          :: !(Maybe Text)
    , _mdsPassword          :: !(Maybe (Sensitive Text))
    , _mdsNestingLevel      :: !(Maybe NestingLevelValue)
    , _mdsDatabaseName      :: !(Maybe Text)
    , _mdsDocsToInvestigate :: !(Maybe Text)
    , _mdsAuthSource        :: !(Maybe Text)
    , _mdsExtractDocId      :: !(Maybe Text)
    , _mdsAuthType          :: !(Maybe AuthTypeValue)
    , _mdsPort              :: !(Maybe Int)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MongoDBSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsServerName' - The name of the server on the MongoDB source endpoint.
--
-- * 'mdsAuthMechanism' - The authentication mechanism you use to access the MongoDB source endpoint. Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1  DEFAULT – For MongoDB version 2.x, use MONGODB_CR. For MongoDB version 3.x, use SCRAM_SHA_1. This setting isn't used when authType=No.
--
-- * 'mdsUsername' - The user name you use to access the MongoDB source endpoint.
--
-- * 'mdsKMSKeyId' - The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'mdsPassword' - The password for the user account you use to access the MongoDB source endpoint.
--
-- * 'mdsNestingLevel' - Specifies either document or table mode.  Valid values: NONE, ONE Default value is NONE. Specify NONE to use document mode. Specify ONE to use table mode.
--
-- * 'mdsDatabaseName' - The database name on the MongoDB source endpoint.
--
-- * 'mdsDocsToInvestigate' - Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to ONE.  Must be a positive value greater than 0. Default value is 1000.
--
-- * 'mdsAuthSource' - The MongoDB database name. This setting isn't used when @authType=NO@ .  The default is admin.
--
-- * 'mdsExtractDocId' - Specifies the document ID. Use this setting when @NestingLevel@ is set to NONE.  Default value is false.
--
-- * 'mdsAuthType' - The authentication type you use to access the MongoDB source endpoint. Valid values: NO, PASSWORD  When NO is selected, user name and password parameters are not used and can be empty.
--
-- * 'mdsPort' - The port value for the MongoDB source endpoint.
mongoDBSettings
    :: MongoDBSettings
mongoDBSettings =
  MongoDBSettings'
    { _mdsServerName = Nothing
    , _mdsAuthMechanism = Nothing
    , _mdsUsername = Nothing
    , _mdsKMSKeyId = Nothing
    , _mdsPassword = Nothing
    , _mdsNestingLevel = Nothing
    , _mdsDatabaseName = Nothing
    , _mdsDocsToInvestigate = Nothing
    , _mdsAuthSource = Nothing
    , _mdsExtractDocId = Nothing
    , _mdsAuthType = Nothing
    , _mdsPort = Nothing
    }


-- | The name of the server on the MongoDB source endpoint.
mdsServerName :: Lens' MongoDBSettings (Maybe Text)
mdsServerName = lens _mdsServerName (\ s a -> s{_mdsServerName = a})

-- | The authentication mechanism you use to access the MongoDB source endpoint. Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1  DEFAULT – For MongoDB version 2.x, use MONGODB_CR. For MongoDB version 3.x, use SCRAM_SHA_1. This setting isn't used when authType=No.
mdsAuthMechanism :: Lens' MongoDBSettings (Maybe AuthMechanismValue)
mdsAuthMechanism = lens _mdsAuthMechanism (\ s a -> s{_mdsAuthMechanism = a})

-- | The user name you use to access the MongoDB source endpoint.
mdsUsername :: Lens' MongoDBSettings (Maybe Text)
mdsUsername = lens _mdsUsername (\ s a -> s{_mdsUsername = a})

-- | The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
mdsKMSKeyId :: Lens' MongoDBSettings (Maybe Text)
mdsKMSKeyId = lens _mdsKMSKeyId (\ s a -> s{_mdsKMSKeyId = a})

-- | The password for the user account you use to access the MongoDB source endpoint.
mdsPassword :: Lens' MongoDBSettings (Maybe Text)
mdsPassword = lens _mdsPassword (\ s a -> s{_mdsPassword = a}) . mapping _Sensitive

-- | Specifies either document or table mode.  Valid values: NONE, ONE Default value is NONE. Specify NONE to use document mode. Specify ONE to use table mode.
mdsNestingLevel :: Lens' MongoDBSettings (Maybe NestingLevelValue)
mdsNestingLevel = lens _mdsNestingLevel (\ s a -> s{_mdsNestingLevel = a})

-- | The database name on the MongoDB source endpoint.
mdsDatabaseName :: Lens' MongoDBSettings (Maybe Text)
mdsDatabaseName = lens _mdsDatabaseName (\ s a -> s{_mdsDatabaseName = a})

-- | Indicates the number of documents to preview to determine the document organization. Use this setting when @NestingLevel@ is set to ONE.  Must be a positive value greater than 0. Default value is 1000.
mdsDocsToInvestigate :: Lens' MongoDBSettings (Maybe Text)
mdsDocsToInvestigate = lens _mdsDocsToInvestigate (\ s a -> s{_mdsDocsToInvestigate = a})

-- | The MongoDB database name. This setting isn't used when @authType=NO@ .  The default is admin.
mdsAuthSource :: Lens' MongoDBSettings (Maybe Text)
mdsAuthSource = lens _mdsAuthSource (\ s a -> s{_mdsAuthSource = a})

-- | Specifies the document ID. Use this setting when @NestingLevel@ is set to NONE.  Default value is false.
mdsExtractDocId :: Lens' MongoDBSettings (Maybe Text)
mdsExtractDocId = lens _mdsExtractDocId (\ s a -> s{_mdsExtractDocId = a})

-- | The authentication type you use to access the MongoDB source endpoint. Valid values: NO, PASSWORD  When NO is selected, user name and password parameters are not used and can be empty.
mdsAuthType :: Lens' MongoDBSettings (Maybe AuthTypeValue)
mdsAuthType = lens _mdsAuthType (\ s a -> s{_mdsAuthType = a})

-- | The port value for the MongoDB source endpoint.
mdsPort :: Lens' MongoDBSettings (Maybe Int)
mdsPort = lens _mdsPort (\ s a -> s{_mdsPort = a})

instance FromJSON MongoDBSettings where
        parseJSON
          = withObject "MongoDBSettings"
              (\ x ->
                 MongoDBSettings' <$>
                   (x .:? "ServerName") <*> (x .:? "AuthMechanism") <*>
                     (x .:? "Username")
                     <*> (x .:? "KmsKeyId")
                     <*> (x .:? "Password")
                     <*> (x .:? "NestingLevel")
                     <*> (x .:? "DatabaseName")
                     <*> (x .:? "DocsToInvestigate")
                     <*> (x .:? "AuthSource")
                     <*> (x .:? "ExtractDocId")
                     <*> (x .:? "AuthType")
                     <*> (x .:? "Port"))

instance Hashable MongoDBSettings where

instance NFData MongoDBSettings where

instance ToJSON MongoDBSettings where
        toJSON MongoDBSettings'{..}
          = object
              (catMaybes
                 [("ServerName" .=) <$> _mdsServerName,
                  ("AuthMechanism" .=) <$> _mdsAuthMechanism,
                  ("Username" .=) <$> _mdsUsername,
                  ("KmsKeyId" .=) <$> _mdsKMSKeyId,
                  ("Password" .=) <$> _mdsPassword,
                  ("NestingLevel" .=) <$> _mdsNestingLevel,
                  ("DatabaseName" .=) <$> _mdsDatabaseName,
                  ("DocsToInvestigate" .=) <$> _mdsDocsToInvestigate,
                  ("AuthSource" .=) <$> _mdsAuthSource,
                  ("ExtractDocId" .=) <$> _mdsExtractDocId,
                  ("AuthType" .=) <$> _mdsAuthType,
                  ("Port" .=) <$> _mdsPort])

-- | Provides information that defines an Amazon Neptune endpoint.
--
--
--
-- /See:/ 'neptuneSettings' smart constructor.
data NeptuneSettings =
  NeptuneSettings'
    { _nsMaxFileSize          :: !(Maybe Int)
    , _nsMaxRetryCount        :: !(Maybe Int)
    , _nsServiceAccessRoleARN :: !(Maybe Text)
    , _nsIAMAuthEnabled       :: !(Maybe Bool)
    , _nsErrorRetryDuration   :: !(Maybe Int)
    , _nsS3BucketName         :: !Text
    , _nsS3BucketFolder       :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'NeptuneSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsMaxFileSize' - The maximum size in KB of migrated graph data stored in a CSV file before AWS DMS bulk-loads the data to the Neptune target database. The default is 1048576 KB. If successful, AWS DMS clears the bucket, ready to store the next batch of migrated graph data.
--
-- * 'nsMaxRetryCount' - The number of times for AWS DMS to retry a bulk-load of migrated graph data to the Neptune target database before raising an error. The default is 5.
--
-- * 'nsServiceAccessRoleARN' - The ARN of the service role you have created for the Neptune target endpoint. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole> in the /AWS Database Migration Service User Guide./
--
-- * 'nsIAMAuthEnabled' - If you want IAM authorization enabled for this endpoint, set this parameter to @true@ and attach the appropriate role policy document to your service role specified by @ServiceAccessRoleArn@ . The default is @false@ .
--
-- * 'nsErrorRetryDuration' - The number of milliseconds for AWS DMS to wait to retry a bulk-load of migrated graph data to the Neptune target database before raising an error. The default is 250.
--
-- * 'nsS3BucketName' - The name of the S3 bucket for AWS DMS to temporarily store migrated graph data in CSV files before bulk-loading it to the Neptune target database. AWS DMS maps the SQL source data to graph data before storing it in these CSV files.
--
-- * 'nsS3BucketFolder' - A folder path where you where you want AWS DMS to store migrated graph data in the S3 bucket specified by @S3BucketName@
neptuneSettings
    :: Text -- ^ 'nsS3BucketName'
    -> Text -- ^ 'nsS3BucketFolder'
    -> NeptuneSettings
neptuneSettings pS3BucketName_ pS3BucketFolder_ =
  NeptuneSettings'
    { _nsMaxFileSize = Nothing
    , _nsMaxRetryCount = Nothing
    , _nsServiceAccessRoleARN = Nothing
    , _nsIAMAuthEnabled = Nothing
    , _nsErrorRetryDuration = Nothing
    , _nsS3BucketName = pS3BucketName_
    , _nsS3BucketFolder = pS3BucketFolder_
    }


-- | The maximum size in KB of migrated graph data stored in a CSV file before AWS DMS bulk-loads the data to the Neptune target database. The default is 1048576 KB. If successful, AWS DMS clears the bucket, ready to store the next batch of migrated graph data.
nsMaxFileSize :: Lens' NeptuneSettings (Maybe Int)
nsMaxFileSize = lens _nsMaxFileSize (\ s a -> s{_nsMaxFileSize = a})

-- | The number of times for AWS DMS to retry a bulk-load of migrated graph data to the Neptune target database before raising an error. The default is 5.
nsMaxRetryCount :: Lens' NeptuneSettings (Maybe Int)
nsMaxRetryCount = lens _nsMaxRetryCount (\ s a -> s{_nsMaxRetryCount = a})

-- | The ARN of the service role you have created for the Neptune target endpoint. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole> in the /AWS Database Migration Service User Guide./
nsServiceAccessRoleARN :: Lens' NeptuneSettings (Maybe Text)
nsServiceAccessRoleARN = lens _nsServiceAccessRoleARN (\ s a -> s{_nsServiceAccessRoleARN = a})

-- | If you want IAM authorization enabled for this endpoint, set this parameter to @true@ and attach the appropriate role policy document to your service role specified by @ServiceAccessRoleArn@ . The default is @false@ .
nsIAMAuthEnabled :: Lens' NeptuneSettings (Maybe Bool)
nsIAMAuthEnabled = lens _nsIAMAuthEnabled (\ s a -> s{_nsIAMAuthEnabled = a})

-- | The number of milliseconds for AWS DMS to wait to retry a bulk-load of migrated graph data to the Neptune target database before raising an error. The default is 250.
nsErrorRetryDuration :: Lens' NeptuneSettings (Maybe Int)
nsErrorRetryDuration = lens _nsErrorRetryDuration (\ s a -> s{_nsErrorRetryDuration = a})

-- | The name of the S3 bucket for AWS DMS to temporarily store migrated graph data in CSV files before bulk-loading it to the Neptune target database. AWS DMS maps the SQL source data to graph data before storing it in these CSV files.
nsS3BucketName :: Lens' NeptuneSettings Text
nsS3BucketName = lens _nsS3BucketName (\ s a -> s{_nsS3BucketName = a})

-- | A folder path where you where you want AWS DMS to store migrated graph data in the S3 bucket specified by @S3BucketName@
nsS3BucketFolder :: Lens' NeptuneSettings Text
nsS3BucketFolder = lens _nsS3BucketFolder (\ s a -> s{_nsS3BucketFolder = a})

instance FromJSON NeptuneSettings where
        parseJSON
          = withObject "NeptuneSettings"
              (\ x ->
                 NeptuneSettings' <$>
                   (x .:? "MaxFileSize") <*> (x .:? "MaxRetryCount") <*>
                     (x .:? "ServiceAccessRoleArn")
                     <*> (x .:? "IamAuthEnabled")
                     <*> (x .:? "ErrorRetryDuration")
                     <*> (x .: "S3BucketName")
                     <*> (x .: "S3BucketFolder"))

instance Hashable NeptuneSettings where

instance NFData NeptuneSettings where

instance ToJSON NeptuneSettings where
        toJSON NeptuneSettings'{..}
          = object
              (catMaybes
                 [("MaxFileSize" .=) <$> _nsMaxFileSize,
                  ("MaxRetryCount" .=) <$> _nsMaxRetryCount,
                  ("ServiceAccessRoleArn" .=) <$>
                    _nsServiceAccessRoleARN,
                  ("IamAuthEnabled" .=) <$> _nsIAMAuthEnabled,
                  ("ErrorRetryDuration" .=) <$> _nsErrorRetryDuration,
                  Just ("S3BucketName" .= _nsS3BucketName),
                  Just ("S3BucketFolder" .= _nsS3BucketFolder)])

-- | In response to the @DescribeOrderableReplicationInstances@ operation, this object describes an available replication instance. This description includes the replication instance's type, engine version, and allocated storage.
--
--
--
-- /See:/ 'orderableReplicationInstance' smart constructor.
data OrderableReplicationInstance =
  OrderableReplicationInstance'
    { _oriEngineVersion            :: !(Maybe Text)
    , _oriMinAllocatedStorage      :: !(Maybe Int)
    , _oriReleaseStatus            :: !(Maybe ReleaseStatusValues)
    , _oriIncludedAllocatedStorage :: !(Maybe Int)
    , _oriAvailabilityZones        :: !(Maybe [Text])
    , _oriMaxAllocatedStorage      :: !(Maybe Int)
    , _oriReplicationInstanceClass :: !(Maybe Text)
    , _oriDefaultAllocatedStorage  :: !(Maybe Int)
    , _oriStorageType              :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderableReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oriEngineVersion' - The version of the replication engine.
--
-- * 'oriMinAllocatedStorage' - The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
--
-- * 'oriReleaseStatus' - The value returned when the specified @EngineVersion@ of the replication instance is in Beta or test mode. This indicates some features might not work as expected.
--
-- * 'oriIncludedAllocatedStorage' - The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- * 'oriAvailabilityZones' - List of Availability Zones for this replication instance.
--
-- * 'oriMaxAllocatedStorage' - The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
--
-- * 'oriReplicationInstanceClass' - The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
--
-- * 'oriDefaultAllocatedStorage' - The default amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- * 'oriStorageType' - The type of storage used by the replication instance.
orderableReplicationInstance
    :: OrderableReplicationInstance
orderableReplicationInstance =
  OrderableReplicationInstance'
    { _oriEngineVersion = Nothing
    , _oriMinAllocatedStorage = Nothing
    , _oriReleaseStatus = Nothing
    , _oriIncludedAllocatedStorage = Nothing
    , _oriAvailabilityZones = Nothing
    , _oriMaxAllocatedStorage = Nothing
    , _oriReplicationInstanceClass = Nothing
    , _oriDefaultAllocatedStorage = Nothing
    , _oriStorageType = Nothing
    }


-- | The version of the replication engine.
oriEngineVersion :: Lens' OrderableReplicationInstance (Maybe Text)
oriEngineVersion = lens _oriEngineVersion (\ s a -> s{_oriEngineVersion = a})

-- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
oriMinAllocatedStorage :: Lens' OrderableReplicationInstance (Maybe Int)
oriMinAllocatedStorage = lens _oriMinAllocatedStorage (\ s a -> s{_oriMinAllocatedStorage = a})

-- | The value returned when the specified @EngineVersion@ of the replication instance is in Beta or test mode. This indicates some features might not work as expected.
oriReleaseStatus :: Lens' OrderableReplicationInstance (Maybe ReleaseStatusValues)
oriReleaseStatus = lens _oriReleaseStatus (\ s a -> s{_oriReleaseStatus = a})

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
oriIncludedAllocatedStorage :: Lens' OrderableReplicationInstance (Maybe Int)
oriIncludedAllocatedStorage = lens _oriIncludedAllocatedStorage (\ s a -> s{_oriIncludedAllocatedStorage = a})

-- | List of Availability Zones for this replication instance.
oriAvailabilityZones :: Lens' OrderableReplicationInstance [Text]
oriAvailabilityZones = lens _oriAvailabilityZones (\ s a -> s{_oriAvailabilityZones = a}) . _Default . _Coerce

-- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
oriMaxAllocatedStorage :: Lens' OrderableReplicationInstance (Maybe Int)
oriMaxAllocatedStorage = lens _oriMaxAllocatedStorage (\ s a -> s{_oriMaxAllocatedStorage = a})

-- | The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
oriReplicationInstanceClass :: Lens' OrderableReplicationInstance (Maybe Text)
oriReplicationInstanceClass = lens _oriReplicationInstanceClass (\ s a -> s{_oriReplicationInstanceClass = a})

-- | The default amount of storage (in gigabytes) that is allocated for the replication instance.
oriDefaultAllocatedStorage :: Lens' OrderableReplicationInstance (Maybe Int)
oriDefaultAllocatedStorage = lens _oriDefaultAllocatedStorage (\ s a -> s{_oriDefaultAllocatedStorage = a})

-- | The type of storage used by the replication instance.
oriStorageType :: Lens' OrderableReplicationInstance (Maybe Text)
oriStorageType = lens _oriStorageType (\ s a -> s{_oriStorageType = a})

instance FromJSON OrderableReplicationInstance where
        parseJSON
          = withObject "OrderableReplicationInstance"
              (\ x ->
                 OrderableReplicationInstance' <$>
                   (x .:? "EngineVersion") <*>
                     (x .:? "MinAllocatedStorage")
                     <*> (x .:? "ReleaseStatus")
                     <*> (x .:? "IncludedAllocatedStorage")
                     <*> (x .:? "AvailabilityZones" .!= mempty)
                     <*> (x .:? "MaxAllocatedStorage")
                     <*> (x .:? "ReplicationInstanceClass")
                     <*> (x .:? "DefaultAllocatedStorage")
                     <*> (x .:? "StorageType"))

instance Hashable OrderableReplicationInstance where

instance NFData OrderableReplicationInstance where

-- | Describes a maintenance action pending for an AWS DMS resource, including when and how it will be applied. This data type is a response element to the @DescribePendingMaintenanceActions@ operation.
--
--
--
-- /See:/ 'pendingMaintenanceAction' smart constructor.
data PendingMaintenanceAction =
  PendingMaintenanceAction'
    { _pmaAutoAppliedAfterDate :: !(Maybe POSIX)
    , _pmaAction               :: !(Maybe Text)
    , _pmaOptInStatus          :: !(Maybe Text)
    , _pmaDescription          :: !(Maybe Text)
    , _pmaForcedApplyDate      :: !(Maybe POSIX)
    , _pmaCurrentApplyDate     :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PendingMaintenanceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmaAutoAppliedAfterDate' - The date of the maintenance window when the action is to be applied. The maintenance action is applied to the resource during its first maintenance window after this date. If this date is specified, any @next-maintenance@ opt-in requests are ignored.
--
-- * 'pmaAction' - The type of pending maintenance action that is available for the resource.
--
-- * 'pmaOptInStatus' - The type of opt-in request that has been received for the resource.
--
-- * 'pmaDescription' - A description providing more detail about the maintenance action.
--
-- * 'pmaForcedApplyDate' - The date when the maintenance action will be automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any @immediate@ opt-in requests are ignored.
--
-- * 'pmaCurrentApplyDate' - The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the @ApplyPendingMaintenanceAction@ API operation, and also the @AutoAppliedAfterDate@ and @ForcedApplyDate@ parameter values. This value is blank if an opt-in request has not been received and nothing has been specified for @AutoAppliedAfterDate@ or @ForcedApplyDate@ .
pendingMaintenanceAction
    :: PendingMaintenanceAction
pendingMaintenanceAction =
  PendingMaintenanceAction'
    { _pmaAutoAppliedAfterDate = Nothing
    , _pmaAction = Nothing
    , _pmaOptInStatus = Nothing
    , _pmaDescription = Nothing
    , _pmaForcedApplyDate = Nothing
    , _pmaCurrentApplyDate = Nothing
    }


-- | The date of the maintenance window when the action is to be applied. The maintenance action is applied to the resource during its first maintenance window after this date. If this date is specified, any @next-maintenance@ opt-in requests are ignored.
pmaAutoAppliedAfterDate :: Lens' PendingMaintenanceAction (Maybe UTCTime)
pmaAutoAppliedAfterDate = lens _pmaAutoAppliedAfterDate (\ s a -> s{_pmaAutoAppliedAfterDate = a}) . mapping _Time

-- | The type of pending maintenance action that is available for the resource.
pmaAction :: Lens' PendingMaintenanceAction (Maybe Text)
pmaAction = lens _pmaAction (\ s a -> s{_pmaAction = a})

-- | The type of opt-in request that has been received for the resource.
pmaOptInStatus :: Lens' PendingMaintenanceAction (Maybe Text)
pmaOptInStatus = lens _pmaOptInStatus (\ s a -> s{_pmaOptInStatus = a})

-- | A description providing more detail about the maintenance action.
pmaDescription :: Lens' PendingMaintenanceAction (Maybe Text)
pmaDescription = lens _pmaDescription (\ s a -> s{_pmaDescription = a})

-- | The date when the maintenance action will be automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any @immediate@ opt-in requests are ignored.
pmaForcedApplyDate :: Lens' PendingMaintenanceAction (Maybe UTCTime)
pmaForcedApplyDate = lens _pmaForcedApplyDate (\ s a -> s{_pmaForcedApplyDate = a}) . mapping _Time

-- | The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the @ApplyPendingMaintenanceAction@ API operation, and also the @AutoAppliedAfterDate@ and @ForcedApplyDate@ parameter values. This value is blank if an opt-in request has not been received and nothing has been specified for @AutoAppliedAfterDate@ or @ForcedApplyDate@ .
pmaCurrentApplyDate :: Lens' PendingMaintenanceAction (Maybe UTCTime)
pmaCurrentApplyDate = lens _pmaCurrentApplyDate (\ s a -> s{_pmaCurrentApplyDate = a}) . mapping _Time

instance FromJSON PendingMaintenanceAction where
        parseJSON
          = withObject "PendingMaintenanceAction"
              (\ x ->
                 PendingMaintenanceAction' <$>
                   (x .:? "AutoAppliedAfterDate") <*> (x .:? "Action")
                     <*> (x .:? "OptInStatus")
                     <*> (x .:? "Description")
                     <*> (x .:? "ForcedApplyDate")
                     <*> (x .:? "CurrentApplyDate"))

instance Hashable PendingMaintenanceAction where

instance NFData PendingMaintenanceAction where

-- | Provides information that defines an Amazon Redshift endpoint.
--
--
--
-- /See:/ 'redshiftSettings' smart constructor.
data RedshiftSettings =
  RedshiftSettings'
    { _rsEmptyAsNull                  :: !(Maybe Bool)
    , _rsMaxFileSize                  :: !(Maybe Int)
    , _rsReplaceChars                 :: !(Maybe Text)
    , _rsServerName                   :: !(Maybe Text)
    , _rsConnectionTimeout            :: !(Maybe Int)
    , _rsLoadTimeout                  :: !(Maybe Int)
    , _rsServiceAccessRoleARN         :: !(Maybe Text)
    , _rsBucketFolder                 :: !(Maybe Text)
    , _rsTruncateColumns              :: !(Maybe Bool)
    , _rsReplaceInvalidChars          :: !(Maybe Text)
    , _rsUsername                     :: !(Maybe Text)
    , _rsBucketName                   :: !(Maybe Text)
    , _rsEncryptionMode               :: !(Maybe EncryptionModeValue)
    , _rsDateFormat                   :: !(Maybe Text)
    , _rsRemoveQuotes                 :: !(Maybe Bool)
    , _rsPassword                     :: !(Maybe (Sensitive Text))
    , _rsDatabaseName                 :: !(Maybe Text)
    , _rsAcceptAnyDate                :: !(Maybe Bool)
    , _rsAfterConnectScript           :: !(Maybe Text)
    , _rsWriteBufferSize              :: !(Maybe Int)
    , _rsTrimBlanks                   :: !(Maybe Bool)
    , _rsTimeFormat                   :: !(Maybe Text)
    , _rsServerSideEncryptionKMSKeyId :: !(Maybe Text)
    , _rsPort                         :: !(Maybe Int)
    , _rsFileTransferUploadStreams    :: !(Maybe Int)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RedshiftSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsEmptyAsNull' - A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
--
-- * 'rsMaxFileSize' - The maximum size (in KB) of any .csv file used to transfer data to Amazon Redshift. This accepts a value from 1 through 1,048,576. It defaults to 32,768 KB (32 MB).
--
-- * 'rsReplaceChars' - A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
--
-- * 'rsServerName' - The name of the Amazon Redshift cluster you are using.
--
-- * 'rsConnectionTimeout' - A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
--
-- * 'rsLoadTimeout' - The amount of time to wait (in milliseconds) before timing out, beginning from when you begin loading.
--
-- * 'rsServiceAccessRoleARN' - The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
--
-- * 'rsBucketFolder' - The location where the comma-separated value (.csv) files are stored before being uploaded to the S3 bucket.
--
-- * 'rsTruncateColumns' - A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
--
-- * 'rsReplaceInvalidChars' - A list of characters that you want to replace. Use with @ReplaceChars@ .
--
-- * 'rsUsername' - An Amazon Redshift user name for a registered user.
--
-- * 'rsBucketName' - The name of the S3 bucket you want to use
--
-- * 'rsEncryptionMode' - The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ . To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
--
-- * 'rsDateFormat' - The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.  If your date and time values use formats different from each other, set this to @auto@ .
--
-- * 'rsRemoveQuotes' - A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
--
-- * 'rsPassword' - The password for the user named in the @username@ property.
--
-- * 'rsDatabaseName' - The name of the Amazon Redshift data warehouse (service) that you are working with.
--
-- * 'rsAcceptAnyDate' - A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default). This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
--
-- * 'rsAfterConnectScript' - Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
--
-- * 'rsWriteBufferSize' - The size of the write buffer to use in rows. Valid values range from 1 through 2,048. The default is 1,024. Use this setting to tune performance.
--
-- * 'rsTrimBlanks' - A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
--
-- * 'rsTimeFormat' - The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.  If your date and time values use formats different from each other, set this parameter to @auto@ .
--
-- * 'rsServerSideEncryptionKMSKeyId' - The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
--
-- * 'rsPort' - The port number for Amazon Redshift. The default value is 5439.
--
-- * 'rsFileTransferUploadStreams' - The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10.
redshiftSettings
    :: RedshiftSettings
redshiftSettings =
  RedshiftSettings'
    { _rsEmptyAsNull = Nothing
    , _rsMaxFileSize = Nothing
    , _rsReplaceChars = Nothing
    , _rsServerName = Nothing
    , _rsConnectionTimeout = Nothing
    , _rsLoadTimeout = Nothing
    , _rsServiceAccessRoleARN = Nothing
    , _rsBucketFolder = Nothing
    , _rsTruncateColumns = Nothing
    , _rsReplaceInvalidChars = Nothing
    , _rsUsername = Nothing
    , _rsBucketName = Nothing
    , _rsEncryptionMode = Nothing
    , _rsDateFormat = Nothing
    , _rsRemoveQuotes = Nothing
    , _rsPassword = Nothing
    , _rsDatabaseName = Nothing
    , _rsAcceptAnyDate = Nothing
    , _rsAfterConnectScript = Nothing
    , _rsWriteBufferSize = Nothing
    , _rsTrimBlanks = Nothing
    , _rsTimeFormat = Nothing
    , _rsServerSideEncryptionKMSKeyId = Nothing
    , _rsPort = Nothing
    , _rsFileTransferUploadStreams = Nothing
    }


-- | A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
rsEmptyAsNull :: Lens' RedshiftSettings (Maybe Bool)
rsEmptyAsNull = lens _rsEmptyAsNull (\ s a -> s{_rsEmptyAsNull = a})

-- | The maximum size (in KB) of any .csv file used to transfer data to Amazon Redshift. This accepts a value from 1 through 1,048,576. It defaults to 32,768 KB (32 MB).
rsMaxFileSize :: Lens' RedshiftSettings (Maybe Int)
rsMaxFileSize = lens _rsMaxFileSize (\ s a -> s{_rsMaxFileSize = a})

-- | A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
rsReplaceChars :: Lens' RedshiftSettings (Maybe Text)
rsReplaceChars = lens _rsReplaceChars (\ s a -> s{_rsReplaceChars = a})

-- | The name of the Amazon Redshift cluster you are using.
rsServerName :: Lens' RedshiftSettings (Maybe Text)
rsServerName = lens _rsServerName (\ s a -> s{_rsServerName = a})

-- | A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
rsConnectionTimeout :: Lens' RedshiftSettings (Maybe Int)
rsConnectionTimeout = lens _rsConnectionTimeout (\ s a -> s{_rsConnectionTimeout = a})

-- | The amount of time to wait (in milliseconds) before timing out, beginning from when you begin loading.
rsLoadTimeout :: Lens' RedshiftSettings (Maybe Int)
rsLoadTimeout = lens _rsLoadTimeout (\ s a -> s{_rsLoadTimeout = a})

-- | The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
rsServiceAccessRoleARN :: Lens' RedshiftSettings (Maybe Text)
rsServiceAccessRoleARN = lens _rsServiceAccessRoleARN (\ s a -> s{_rsServiceAccessRoleARN = a})

-- | The location where the comma-separated value (.csv) files are stored before being uploaded to the S3 bucket.
rsBucketFolder :: Lens' RedshiftSettings (Maybe Text)
rsBucketFolder = lens _rsBucketFolder (\ s a -> s{_rsBucketFolder = a})

-- | A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
rsTruncateColumns :: Lens' RedshiftSettings (Maybe Bool)
rsTruncateColumns = lens _rsTruncateColumns (\ s a -> s{_rsTruncateColumns = a})

-- | A list of characters that you want to replace. Use with @ReplaceChars@ .
rsReplaceInvalidChars :: Lens' RedshiftSettings (Maybe Text)
rsReplaceInvalidChars = lens _rsReplaceInvalidChars (\ s a -> s{_rsReplaceInvalidChars = a})

-- | An Amazon Redshift user name for a registered user.
rsUsername :: Lens' RedshiftSettings (Maybe Text)
rsUsername = lens _rsUsername (\ s a -> s{_rsUsername = a})

-- | The name of the S3 bucket you want to use
rsBucketName :: Lens' RedshiftSettings (Maybe Text)
rsBucketName = lens _rsBucketName (\ s a -> s{_rsBucketName = a})

-- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ . To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
rsEncryptionMode :: Lens' RedshiftSettings (Maybe EncryptionModeValue)
rsEncryptionMode = lens _rsEncryptionMode (\ s a -> s{_rsEncryptionMode = a})

-- | The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.  If your date and time values use formats different from each other, set this to @auto@ .
rsDateFormat :: Lens' RedshiftSettings (Maybe Text)
rsDateFormat = lens _rsDateFormat (\ s a -> s{_rsDateFormat = a})

-- | A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
rsRemoveQuotes :: Lens' RedshiftSettings (Maybe Bool)
rsRemoveQuotes = lens _rsRemoveQuotes (\ s a -> s{_rsRemoveQuotes = a})

-- | The password for the user named in the @username@ property.
rsPassword :: Lens' RedshiftSettings (Maybe Text)
rsPassword = lens _rsPassword (\ s a -> s{_rsPassword = a}) . mapping _Sensitive

-- | The name of the Amazon Redshift data warehouse (service) that you are working with.
rsDatabaseName :: Lens' RedshiftSettings (Maybe Text)
rsDatabaseName = lens _rsDatabaseName (\ s a -> s{_rsDatabaseName = a})

-- | A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default). This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
rsAcceptAnyDate :: Lens' RedshiftSettings (Maybe Bool)
rsAcceptAnyDate = lens _rsAcceptAnyDate (\ s a -> s{_rsAcceptAnyDate = a})

-- | Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
rsAfterConnectScript :: Lens' RedshiftSettings (Maybe Text)
rsAfterConnectScript = lens _rsAfterConnectScript (\ s a -> s{_rsAfterConnectScript = a})

-- | The size of the write buffer to use in rows. Valid values range from 1 through 2,048. The default is 1,024. Use this setting to tune performance.
rsWriteBufferSize :: Lens' RedshiftSettings (Maybe Int)
rsWriteBufferSize = lens _rsWriteBufferSize (\ s a -> s{_rsWriteBufferSize = a})

-- | A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
rsTrimBlanks :: Lens' RedshiftSettings (Maybe Bool)
rsTrimBlanks = lens _rsTrimBlanks (\ s a -> s{_rsTrimBlanks = a})

-- | The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.  If your date and time values use formats different from each other, set this parameter to @auto@ .
rsTimeFormat :: Lens' RedshiftSettings (Maybe Text)
rsTimeFormat = lens _rsTimeFormat (\ s a -> s{_rsTimeFormat = a})

-- | The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
rsServerSideEncryptionKMSKeyId :: Lens' RedshiftSettings (Maybe Text)
rsServerSideEncryptionKMSKeyId = lens _rsServerSideEncryptionKMSKeyId (\ s a -> s{_rsServerSideEncryptionKMSKeyId = a})

-- | The port number for Amazon Redshift. The default value is 5439.
rsPort :: Lens' RedshiftSettings (Maybe Int)
rsPort = lens _rsPort (\ s a -> s{_rsPort = a})

-- | The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10.
rsFileTransferUploadStreams :: Lens' RedshiftSettings (Maybe Int)
rsFileTransferUploadStreams = lens _rsFileTransferUploadStreams (\ s a -> s{_rsFileTransferUploadStreams = a})

instance FromJSON RedshiftSettings where
        parseJSON
          = withObject "RedshiftSettings"
              (\ x ->
                 RedshiftSettings' <$>
                   (x .:? "EmptyAsNull") <*> (x .:? "MaxFileSize") <*>
                     (x .:? "ReplaceChars")
                     <*> (x .:? "ServerName")
                     <*> (x .:? "ConnectionTimeout")
                     <*> (x .:? "LoadTimeout")
                     <*> (x .:? "ServiceAccessRoleArn")
                     <*> (x .:? "BucketFolder")
                     <*> (x .:? "TruncateColumns")
                     <*> (x .:? "ReplaceInvalidChars")
                     <*> (x .:? "Username")
                     <*> (x .:? "BucketName")
                     <*> (x .:? "EncryptionMode")
                     <*> (x .:? "DateFormat")
                     <*> (x .:? "RemoveQuotes")
                     <*> (x .:? "Password")
                     <*> (x .:? "DatabaseName")
                     <*> (x .:? "AcceptAnyDate")
                     <*> (x .:? "AfterConnectScript")
                     <*> (x .:? "WriteBufferSize")
                     <*> (x .:? "TrimBlanks")
                     <*> (x .:? "TimeFormat")
                     <*> (x .:? "ServerSideEncryptionKmsKeyId")
                     <*> (x .:? "Port")
                     <*> (x .:? "FileTransferUploadStreams"))

instance Hashable RedshiftSettings where

instance NFData RedshiftSettings where

instance ToJSON RedshiftSettings where
        toJSON RedshiftSettings'{..}
          = object
              (catMaybes
                 [("EmptyAsNull" .=) <$> _rsEmptyAsNull,
                  ("MaxFileSize" .=) <$> _rsMaxFileSize,
                  ("ReplaceChars" .=) <$> _rsReplaceChars,
                  ("ServerName" .=) <$> _rsServerName,
                  ("ConnectionTimeout" .=) <$> _rsConnectionTimeout,
                  ("LoadTimeout" .=) <$> _rsLoadTimeout,
                  ("ServiceAccessRoleArn" .=) <$>
                    _rsServiceAccessRoleARN,
                  ("BucketFolder" .=) <$> _rsBucketFolder,
                  ("TruncateColumns" .=) <$> _rsTruncateColumns,
                  ("ReplaceInvalidChars" .=) <$>
                    _rsReplaceInvalidChars,
                  ("Username" .=) <$> _rsUsername,
                  ("BucketName" .=) <$> _rsBucketName,
                  ("EncryptionMode" .=) <$> _rsEncryptionMode,
                  ("DateFormat" .=) <$> _rsDateFormat,
                  ("RemoveQuotes" .=) <$> _rsRemoveQuotes,
                  ("Password" .=) <$> _rsPassword,
                  ("DatabaseName" .=) <$> _rsDatabaseName,
                  ("AcceptAnyDate" .=) <$> _rsAcceptAnyDate,
                  ("AfterConnectScript" .=) <$> _rsAfterConnectScript,
                  ("WriteBufferSize" .=) <$> _rsWriteBufferSize,
                  ("TrimBlanks" .=) <$> _rsTrimBlanks,
                  ("TimeFormat" .=) <$> _rsTimeFormat,
                  ("ServerSideEncryptionKmsKeyId" .=) <$>
                    _rsServerSideEncryptionKMSKeyId,
                  ("Port" .=) <$> _rsPort,
                  ("FileTransferUploadStreams" .=) <$>
                    _rsFileTransferUploadStreams])

-- | Provides information that describes status of a schema at an endpoint specified by the @DescribeRefreshSchemaStatus@ operation.
--
--
--
-- /See:/ 'refreshSchemasStatus' smart constructor.
data RefreshSchemasStatus =
  RefreshSchemasStatus'
    { _rssStatus                 :: !(Maybe RefreshSchemasStatusTypeValue)
    , _rssLastRefreshDate        :: !(Maybe POSIX)
    , _rssReplicationInstanceARN :: !(Maybe Text)
    , _rssEndpointARN            :: !(Maybe Text)
    , _rssLastFailureMessage     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RefreshSchemasStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssStatus' - The status of the schema.
--
-- * 'rssLastRefreshDate' - The date the schema was last refreshed.
--
-- * 'rssReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'rssEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
--
-- * 'rssLastFailureMessage' - The last failure message for the schema.
refreshSchemasStatus
    :: RefreshSchemasStatus
refreshSchemasStatus =
  RefreshSchemasStatus'
    { _rssStatus = Nothing
    , _rssLastRefreshDate = Nothing
    , _rssReplicationInstanceARN = Nothing
    , _rssEndpointARN = Nothing
    , _rssLastFailureMessage = Nothing
    }


-- | The status of the schema.
rssStatus :: Lens' RefreshSchemasStatus (Maybe RefreshSchemasStatusTypeValue)
rssStatus = lens _rssStatus (\ s a -> s{_rssStatus = a})

-- | The date the schema was last refreshed.
rssLastRefreshDate :: Lens' RefreshSchemasStatus (Maybe UTCTime)
rssLastRefreshDate = lens _rssLastRefreshDate (\ s a -> s{_rssLastRefreshDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the replication instance.
rssReplicationInstanceARN :: Lens' RefreshSchemasStatus (Maybe Text)
rssReplicationInstanceARN = lens _rssReplicationInstanceARN (\ s a -> s{_rssReplicationInstanceARN = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
rssEndpointARN :: Lens' RefreshSchemasStatus (Maybe Text)
rssEndpointARN = lens _rssEndpointARN (\ s a -> s{_rssEndpointARN = a})

-- | The last failure message for the schema.
rssLastFailureMessage :: Lens' RefreshSchemasStatus (Maybe Text)
rssLastFailureMessage = lens _rssLastFailureMessage (\ s a -> s{_rssLastFailureMessage = a})

instance FromJSON RefreshSchemasStatus where
        parseJSON
          = withObject "RefreshSchemasStatus"
              (\ x ->
                 RefreshSchemasStatus' <$>
                   (x .:? "Status") <*> (x .:? "LastRefreshDate") <*>
                     (x .:? "ReplicationInstanceArn")
                     <*> (x .:? "EndpointArn")
                     <*> (x .:? "LastFailureMessage"))

instance Hashable RefreshSchemasStatus where

instance NFData RefreshSchemasStatus where

-- | Provides information that defines a replication instance.
--
--
--
-- /See:/ 'replicationInstance' smart constructor.
data ReplicationInstance =
  ReplicationInstance'
    { _riEngineVersion :: !(Maybe Text)
    , _riPubliclyAccessible :: !(Maybe Bool)
    , _riAutoMinorVersionUpgrade :: !(Maybe Bool)
    , _riReplicationInstancePublicIPAddresses :: !(Maybe [Text])
    , _riReplicationSubnetGroup :: !(Maybe ReplicationSubnetGroup)
    , _riInstanceCreateTime :: !(Maybe POSIX)
    , _riFreeUntil :: !(Maybe POSIX)
    , _riReplicationInstanceStatus :: !(Maybe Text)
    , _riReplicationInstancePrivateIPAddresses :: !(Maybe [Text])
    , _riPreferredMaintenanceWindow :: !(Maybe Text)
    , _riReplicationInstancePrivateIPAddress :: !(Maybe Text)
    , _riKMSKeyId :: !(Maybe Text)
    , _riAvailabilityZone :: !(Maybe Text)
    , _riVPCSecurityGroups :: !(Maybe [VPCSecurityGroupMembership])
    , _riMultiAZ :: !(Maybe Bool)
    , _riSecondaryAvailabilityZone :: !(Maybe Text)
    , _riReplicationInstanceARN :: !(Maybe Text)
    , _riAllocatedStorage :: !(Maybe Int)
    , _riDNSNameServers :: !(Maybe Text)
    , _riReplicationInstancePublicIPAddress :: !(Maybe Text)
    , _riReplicationInstanceClass :: !(Maybe Text)
    , _riReplicationInstanceIdentifier :: !(Maybe Text)
    , _riPendingModifiedValues :: !(Maybe ReplicationPendingModifiedValues)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riEngineVersion' - The engine version number of the replication instance.
--
-- * 'riPubliclyAccessible' - Specifies the accessibility options for the replication instance. A value of @true@ represents an instance with a public IP address. A value of @false@ represents an instance with a private IP address. The default value is @true@ .
--
-- * 'riAutoMinorVersionUpgrade' - Boolean value indicating if minor version upgrades will be automatically applied to the instance.
--
-- * 'riReplicationInstancePublicIPAddresses' - One or more public IP addresses for the replication instance.
--
-- * 'riReplicationSubnetGroup' - The subnet group for the replication instance.
--
-- * 'riInstanceCreateTime' - The time the replication instance was created.
--
-- * 'riFreeUntil' - The expiration date of the free replication instance that is part of the Free DMS program.
--
-- * 'riReplicationInstanceStatus' - The status of the replication instance.
--
-- * 'riReplicationInstancePrivateIPAddresses' - One or more private IP addresses for the replication instance.
--
-- * 'riPreferredMaintenanceWindow' - The maintenance window times for the replication instance.
--
-- * 'riReplicationInstancePrivateIPAddress' - The private IP address of the replication instance.
--
-- * 'riKMSKeyId' - An AWS KMS key identifier that is used to encrypt the data on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'riAvailabilityZone' - The Availability Zone for the instance.
--
-- * 'riVPCSecurityGroups' - The VPC security group for the instance.
--
-- * 'riMultiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
--
-- * 'riSecondaryAvailabilityZone' - The Availability Zone of the standby replication instance in a Multi-AZ deployment.
--
-- * 'riReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'riAllocatedStorage' - The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- * 'riDNSNameServers' - The DNS name servers for the replication instance.
--
-- * 'riReplicationInstancePublicIPAddress' - The public IP address of the replication instance.
--
-- * 'riReplicationInstanceClass' - The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
--
-- * 'riReplicationInstanceIdentifier' - The replication instance identifier. This parameter is stored as a lowercase string. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens. Example: @myrepinstance@
--
-- * 'riPendingModifiedValues' - The pending modification values.
replicationInstance
    :: ReplicationInstance
replicationInstance =
  ReplicationInstance'
    { _riEngineVersion = Nothing
    , _riPubliclyAccessible = Nothing
    , _riAutoMinorVersionUpgrade = Nothing
    , _riReplicationInstancePublicIPAddresses = Nothing
    , _riReplicationSubnetGroup = Nothing
    , _riInstanceCreateTime = Nothing
    , _riFreeUntil = Nothing
    , _riReplicationInstanceStatus = Nothing
    , _riReplicationInstancePrivateIPAddresses = Nothing
    , _riPreferredMaintenanceWindow = Nothing
    , _riReplicationInstancePrivateIPAddress = Nothing
    , _riKMSKeyId = Nothing
    , _riAvailabilityZone = Nothing
    , _riVPCSecurityGroups = Nothing
    , _riMultiAZ = Nothing
    , _riSecondaryAvailabilityZone = Nothing
    , _riReplicationInstanceARN = Nothing
    , _riAllocatedStorage = Nothing
    , _riDNSNameServers = Nothing
    , _riReplicationInstancePublicIPAddress = Nothing
    , _riReplicationInstanceClass = Nothing
    , _riReplicationInstanceIdentifier = Nothing
    , _riPendingModifiedValues = Nothing
    }


-- | The engine version number of the replication instance.
riEngineVersion :: Lens' ReplicationInstance (Maybe Text)
riEngineVersion = lens _riEngineVersion (\ s a -> s{_riEngineVersion = a})

-- | Specifies the accessibility options for the replication instance. A value of @true@ represents an instance with a public IP address. A value of @false@ represents an instance with a private IP address. The default value is @true@ .
riPubliclyAccessible :: Lens' ReplicationInstance (Maybe Bool)
riPubliclyAccessible = lens _riPubliclyAccessible (\ s a -> s{_riPubliclyAccessible = a})

-- | Boolean value indicating if minor version upgrades will be automatically applied to the instance.
riAutoMinorVersionUpgrade :: Lens' ReplicationInstance (Maybe Bool)
riAutoMinorVersionUpgrade = lens _riAutoMinorVersionUpgrade (\ s a -> s{_riAutoMinorVersionUpgrade = a})

-- | One or more public IP addresses for the replication instance.
riReplicationInstancePublicIPAddresses :: Lens' ReplicationInstance [Text]
riReplicationInstancePublicIPAddresses = lens _riReplicationInstancePublicIPAddresses (\ s a -> s{_riReplicationInstancePublicIPAddresses = a}) . _Default . _Coerce

-- | The subnet group for the replication instance.
riReplicationSubnetGroup :: Lens' ReplicationInstance (Maybe ReplicationSubnetGroup)
riReplicationSubnetGroup = lens _riReplicationSubnetGroup (\ s a -> s{_riReplicationSubnetGroup = a})

-- | The time the replication instance was created.
riInstanceCreateTime :: Lens' ReplicationInstance (Maybe UTCTime)
riInstanceCreateTime = lens _riInstanceCreateTime (\ s a -> s{_riInstanceCreateTime = a}) . mapping _Time

-- | The expiration date of the free replication instance that is part of the Free DMS program.
riFreeUntil :: Lens' ReplicationInstance (Maybe UTCTime)
riFreeUntil = lens _riFreeUntil (\ s a -> s{_riFreeUntil = a}) . mapping _Time

-- | The status of the replication instance.
riReplicationInstanceStatus :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceStatus = lens _riReplicationInstanceStatus (\ s a -> s{_riReplicationInstanceStatus = a})

-- | One or more private IP addresses for the replication instance.
riReplicationInstancePrivateIPAddresses :: Lens' ReplicationInstance [Text]
riReplicationInstancePrivateIPAddresses = lens _riReplicationInstancePrivateIPAddresses (\ s a -> s{_riReplicationInstancePrivateIPAddresses = a}) . _Default . _Coerce

-- | The maintenance window times for the replication instance.
riPreferredMaintenanceWindow :: Lens' ReplicationInstance (Maybe Text)
riPreferredMaintenanceWindow = lens _riPreferredMaintenanceWindow (\ s a -> s{_riPreferredMaintenanceWindow = a})

-- | The private IP address of the replication instance.
riReplicationInstancePrivateIPAddress :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstancePrivateIPAddress = lens _riReplicationInstancePrivateIPAddress (\ s a -> s{_riReplicationInstancePrivateIPAddress = a})

-- | An AWS KMS key identifier that is used to encrypt the data on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
riKMSKeyId :: Lens' ReplicationInstance (Maybe Text)
riKMSKeyId = lens _riKMSKeyId (\ s a -> s{_riKMSKeyId = a})

-- | The Availability Zone for the instance.
riAvailabilityZone :: Lens' ReplicationInstance (Maybe Text)
riAvailabilityZone = lens _riAvailabilityZone (\ s a -> s{_riAvailabilityZone = a})

-- | The VPC security group for the instance.
riVPCSecurityGroups :: Lens' ReplicationInstance [VPCSecurityGroupMembership]
riVPCSecurityGroups = lens _riVPCSecurityGroups (\ s a -> s{_riVPCSecurityGroups = a}) . _Default . _Coerce

-- | Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
riMultiAZ :: Lens' ReplicationInstance (Maybe Bool)
riMultiAZ = lens _riMultiAZ (\ s a -> s{_riMultiAZ = a})

-- | The Availability Zone of the standby replication instance in a Multi-AZ deployment.
riSecondaryAvailabilityZone :: Lens' ReplicationInstance (Maybe Text)
riSecondaryAvailabilityZone = lens _riSecondaryAvailabilityZone (\ s a -> s{_riSecondaryAvailabilityZone = a})

-- | The Amazon Resource Name (ARN) of the replication instance.
riReplicationInstanceARN :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceARN = lens _riReplicationInstanceARN (\ s a -> s{_riReplicationInstanceARN = a})

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
riAllocatedStorage :: Lens' ReplicationInstance (Maybe Int)
riAllocatedStorage = lens _riAllocatedStorage (\ s a -> s{_riAllocatedStorage = a})

-- | The DNS name servers for the replication instance.
riDNSNameServers :: Lens' ReplicationInstance (Maybe Text)
riDNSNameServers = lens _riDNSNameServers (\ s a -> s{_riDNSNameServers = a})

-- | The public IP address of the replication instance.
riReplicationInstancePublicIPAddress :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstancePublicIPAddress = lens _riReplicationInstancePublicIPAddress (\ s a -> s{_riReplicationInstancePublicIPAddress = a})

-- | The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
riReplicationInstanceClass :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceClass = lens _riReplicationInstanceClass (\ s a -> s{_riReplicationInstanceClass = a})

-- | The replication instance identifier. This parameter is stored as a lowercase string. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens. Example: @myrepinstance@
riReplicationInstanceIdentifier :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceIdentifier = lens _riReplicationInstanceIdentifier (\ s a -> s{_riReplicationInstanceIdentifier = a})

-- | The pending modification values.
riPendingModifiedValues :: Lens' ReplicationInstance (Maybe ReplicationPendingModifiedValues)
riPendingModifiedValues = lens _riPendingModifiedValues (\ s a -> s{_riPendingModifiedValues = a})

instance FromJSON ReplicationInstance where
        parseJSON
          = withObject "ReplicationInstance"
              (\ x ->
                 ReplicationInstance' <$>
                   (x .:? "EngineVersion") <*>
                     (x .:? "PubliclyAccessible")
                     <*> (x .:? "AutoMinorVersionUpgrade")
                     <*>
                     (x .:? "ReplicationInstancePublicIpAddresses" .!=
                        mempty)
                     <*> (x .:? "ReplicationSubnetGroup")
                     <*> (x .:? "InstanceCreateTime")
                     <*> (x .:? "FreeUntil")
                     <*> (x .:? "ReplicationInstanceStatus")
                     <*>
                     (x .:? "ReplicationInstancePrivateIpAddresses" .!=
                        mempty)
                     <*> (x .:? "PreferredMaintenanceWindow")
                     <*> (x .:? "ReplicationInstancePrivateIpAddress")
                     <*> (x .:? "KmsKeyId")
                     <*> (x .:? "AvailabilityZone")
                     <*> (x .:? "VpcSecurityGroups" .!= mempty)
                     <*> (x .:? "MultiAZ")
                     <*> (x .:? "SecondaryAvailabilityZone")
                     <*> (x .:? "ReplicationInstanceArn")
                     <*> (x .:? "AllocatedStorage")
                     <*> (x .:? "DnsNameServers")
                     <*> (x .:? "ReplicationInstancePublicIpAddress")
                     <*> (x .:? "ReplicationInstanceClass")
                     <*> (x .:? "ReplicationInstanceIdentifier")
                     <*> (x .:? "PendingModifiedValues"))

instance Hashable ReplicationInstance where

instance NFData ReplicationInstance where

-- | Contains metadata for a replication instance task log.
--
--
--
-- /See:/ 'replicationInstanceTaskLog' smart constructor.
data ReplicationInstanceTaskLog =
  ReplicationInstanceTaskLog'
    { _ritlReplicationTaskName            :: !(Maybe Text)
    , _ritlReplicationTaskARN             :: !(Maybe Text)
    , _ritlReplicationInstanceTaskLogSize :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationInstanceTaskLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ritlReplicationTaskName' - The name of the replication task.
--
-- * 'ritlReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'ritlReplicationInstanceTaskLogSize' - The size, in bytes, of the replication task log.
replicationInstanceTaskLog
    :: ReplicationInstanceTaskLog
replicationInstanceTaskLog =
  ReplicationInstanceTaskLog'
    { _ritlReplicationTaskName = Nothing
    , _ritlReplicationTaskARN = Nothing
    , _ritlReplicationInstanceTaskLogSize = Nothing
    }


-- | The name of the replication task.
ritlReplicationTaskName :: Lens' ReplicationInstanceTaskLog (Maybe Text)
ritlReplicationTaskName = lens _ritlReplicationTaskName (\ s a -> s{_ritlReplicationTaskName = a})

-- | The Amazon Resource Name (ARN) of the replication task.
ritlReplicationTaskARN :: Lens' ReplicationInstanceTaskLog (Maybe Text)
ritlReplicationTaskARN = lens _ritlReplicationTaskARN (\ s a -> s{_ritlReplicationTaskARN = a})

-- | The size, in bytes, of the replication task log.
ritlReplicationInstanceTaskLogSize :: Lens' ReplicationInstanceTaskLog (Maybe Integer)
ritlReplicationInstanceTaskLogSize = lens _ritlReplicationInstanceTaskLogSize (\ s a -> s{_ritlReplicationInstanceTaskLogSize = a})

instance FromJSON ReplicationInstanceTaskLog where
        parseJSON
          = withObject "ReplicationInstanceTaskLog"
              (\ x ->
                 ReplicationInstanceTaskLog' <$>
                   (x .:? "ReplicationTaskName") <*>
                     (x .:? "ReplicationTaskArn")
                     <*> (x .:? "ReplicationInstanceTaskLogSize"))

instance Hashable ReplicationInstanceTaskLog where

instance NFData ReplicationInstanceTaskLog where

-- | Provides information about the values of pending modifications to a replication instance. This data type is an object of the @ReplicationInstance@ user-defined data type.
--
--
--
-- /See:/ 'replicationPendingModifiedValues' smart constructor.
data ReplicationPendingModifiedValues =
  ReplicationPendingModifiedValues'
    { _rpmvEngineVersion            :: !(Maybe Text)
    , _rpmvMultiAZ                  :: !(Maybe Bool)
    , _rpmvAllocatedStorage         :: !(Maybe Int)
    , _rpmvReplicationInstanceClass :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationPendingModifiedValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpmvEngineVersion' - The engine version number of the replication instance.
--
-- * 'rpmvMultiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
--
-- * 'rpmvAllocatedStorage' - The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- * 'rpmvReplicationInstanceClass' - The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
replicationPendingModifiedValues
    :: ReplicationPendingModifiedValues
replicationPendingModifiedValues =
  ReplicationPendingModifiedValues'
    { _rpmvEngineVersion = Nothing
    , _rpmvMultiAZ = Nothing
    , _rpmvAllocatedStorage = Nothing
    , _rpmvReplicationInstanceClass = Nothing
    }


-- | The engine version number of the replication instance.
rpmvEngineVersion :: Lens' ReplicationPendingModifiedValues (Maybe Text)
rpmvEngineVersion = lens _rpmvEngineVersion (\ s a -> s{_rpmvEngineVersion = a})

-- | Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
rpmvMultiAZ :: Lens' ReplicationPendingModifiedValues (Maybe Bool)
rpmvMultiAZ = lens _rpmvMultiAZ (\ s a -> s{_rpmvMultiAZ = a})

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
rpmvAllocatedStorage :: Lens' ReplicationPendingModifiedValues (Maybe Int)
rpmvAllocatedStorage = lens _rpmvAllocatedStorage (\ s a -> s{_rpmvAllocatedStorage = a})

-- | The compute and memory capacity of the replication instance. Valid Values: @dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge @
rpmvReplicationInstanceClass :: Lens' ReplicationPendingModifiedValues (Maybe Text)
rpmvReplicationInstanceClass = lens _rpmvReplicationInstanceClass (\ s a -> s{_rpmvReplicationInstanceClass = a})

instance FromJSON ReplicationPendingModifiedValues
         where
        parseJSON
          = withObject "ReplicationPendingModifiedValues"
              (\ x ->
                 ReplicationPendingModifiedValues' <$>
                   (x .:? "EngineVersion") <*> (x .:? "MultiAZ") <*>
                     (x .:? "AllocatedStorage")
                     <*> (x .:? "ReplicationInstanceClass"))

instance Hashable ReplicationPendingModifiedValues
         where

instance NFData ReplicationPendingModifiedValues
         where

-- | Describes a subnet group in response to a request by the @DescribeReplicationSubnetGroup@ operation.
--
--
--
-- /See:/ 'replicationSubnetGroup' smart constructor.
data ReplicationSubnetGroup =
  ReplicationSubnetGroup'
    { _rsgVPCId                             :: !(Maybe Text)
    , _rsgSubnets                           :: !(Maybe [Subnet])
    , _rsgReplicationSubnetGroupIdentifier  :: !(Maybe Text)
    , _rsgSubnetGroupStatus                 :: !(Maybe Text)
    , _rsgReplicationSubnetGroupDescription :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationSubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsgVPCId' - The ID of the VPC.
--
-- * 'rsgSubnets' - The subnets that are in the subnet group.
--
-- * 'rsgReplicationSubnetGroupIdentifier' - The identifier of the replication instance subnet group.
--
-- * 'rsgSubnetGroupStatus' - The status of the subnet group.
--
-- * 'rsgReplicationSubnetGroupDescription' - A description for the replication subnet group.
replicationSubnetGroup
    :: ReplicationSubnetGroup
replicationSubnetGroup =
  ReplicationSubnetGroup'
    { _rsgVPCId = Nothing
    , _rsgSubnets = Nothing
    , _rsgReplicationSubnetGroupIdentifier = Nothing
    , _rsgSubnetGroupStatus = Nothing
    , _rsgReplicationSubnetGroupDescription = Nothing
    }


-- | The ID of the VPC.
rsgVPCId :: Lens' ReplicationSubnetGroup (Maybe Text)
rsgVPCId = lens _rsgVPCId (\ s a -> s{_rsgVPCId = a})

-- | The subnets that are in the subnet group.
rsgSubnets :: Lens' ReplicationSubnetGroup [Subnet]
rsgSubnets = lens _rsgSubnets (\ s a -> s{_rsgSubnets = a}) . _Default . _Coerce

-- | The identifier of the replication instance subnet group.
rsgReplicationSubnetGroupIdentifier :: Lens' ReplicationSubnetGroup (Maybe Text)
rsgReplicationSubnetGroupIdentifier = lens _rsgReplicationSubnetGroupIdentifier (\ s a -> s{_rsgReplicationSubnetGroupIdentifier = a})

-- | The status of the subnet group.
rsgSubnetGroupStatus :: Lens' ReplicationSubnetGroup (Maybe Text)
rsgSubnetGroupStatus = lens _rsgSubnetGroupStatus (\ s a -> s{_rsgSubnetGroupStatus = a})

-- | A description for the replication subnet group.
rsgReplicationSubnetGroupDescription :: Lens' ReplicationSubnetGroup (Maybe Text)
rsgReplicationSubnetGroupDescription = lens _rsgReplicationSubnetGroupDescription (\ s a -> s{_rsgReplicationSubnetGroupDescription = a})

instance FromJSON ReplicationSubnetGroup where
        parseJSON
          = withObject "ReplicationSubnetGroup"
              (\ x ->
                 ReplicationSubnetGroup' <$>
                   (x .:? "VpcId") <*> (x .:? "Subnets" .!= mempty) <*>
                     (x .:? "ReplicationSubnetGroupIdentifier")
                     <*> (x .:? "SubnetGroupStatus")
                     <*> (x .:? "ReplicationSubnetGroupDescription"))

instance Hashable ReplicationSubnetGroup where

instance NFData ReplicationSubnetGroup where

-- | Provides information that describes a replication task created by the @CreateReplicationTask@ operation.
--
--
--
-- /See:/ 'replicationTask' smart constructor.
data ReplicationTask =
  ReplicationTask'
    { _rReplicationTaskSettings     :: !(Maybe Text)
    , _rStatus                      :: !(Maybe Text)
    , _rStopReason                  :: !(Maybe Text)
    , _rTargetEndpointARN           :: !(Maybe Text)
    , _rReplicationTaskIdentifier   :: !(Maybe Text)
    , _rCdcStartPosition            :: !(Maybe Text)
    , _rReplicationTaskStartDate    :: !(Maybe POSIX)
    , _rSourceEndpointARN           :: !(Maybe Text)
    , _rRecoveryCheckpoint          :: !(Maybe Text)
    , _rTableMappings               :: !(Maybe Text)
    , _rReplicationTaskCreationDate :: !(Maybe POSIX)
    , _rMigrationType               :: !(Maybe MigrationTypeValue)
    , _rReplicationTaskARN          :: !(Maybe Text)
    , _rTaskData                    :: !(Maybe Text)
    , _rCdcStopPosition             :: !(Maybe Text)
    , _rReplicationTaskStats        :: !(Maybe ReplicationTaskStats)
    , _rReplicationInstanceARN      :: !(Maybe Text)
    , _rLastFailureMessage          :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReplicationTaskSettings' - The settings for the replication task.
--
-- * 'rStatus' - The status of the replication task.
--
-- * 'rStopReason' - The reason the replication task was stopped.
--
-- * 'rTargetEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
--
-- * 'rReplicationTaskIdentifier' - The user-assigned replication task identifier or name. Constraints:     * Must contain from 1 to 255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
--
-- * 'rCdcStartPosition' - Indicates when you want a change data capture (CDC) operation to start. Use either @CdcStartPosition@ or @CdcStartTime@ to specify when you want the CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
--
-- * 'rReplicationTaskStartDate' - The date the replication task is scheduled to start.
--
-- * 'rSourceEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
--
-- * 'rRecoveryCheckpoint' - Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the @CdcStartPosition@ parameter to start a CDC operation that begins at that checkpoint.
--
-- * 'rTableMappings' - Table mappings specified in the task.
--
-- * 'rReplicationTaskCreationDate' - The date the replication task was created.
--
-- * 'rMigrationType' - The type of migration.
--
-- * 'rReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'rTaskData' - Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration User Guide./
--
-- * 'rCdcStopPosition' - Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “
--
-- * 'rReplicationTaskStats' - The statistics for the task, including elapsed time, tables loaded, and table errors.
--
-- * 'rReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'rLastFailureMessage' - The last error (failure) message generated for the replication instance.
replicationTask
    :: ReplicationTask
replicationTask =
  ReplicationTask'
    { _rReplicationTaskSettings = Nothing
    , _rStatus = Nothing
    , _rStopReason = Nothing
    , _rTargetEndpointARN = Nothing
    , _rReplicationTaskIdentifier = Nothing
    , _rCdcStartPosition = Nothing
    , _rReplicationTaskStartDate = Nothing
    , _rSourceEndpointARN = Nothing
    , _rRecoveryCheckpoint = Nothing
    , _rTableMappings = Nothing
    , _rReplicationTaskCreationDate = Nothing
    , _rMigrationType = Nothing
    , _rReplicationTaskARN = Nothing
    , _rTaskData = Nothing
    , _rCdcStopPosition = Nothing
    , _rReplicationTaskStats = Nothing
    , _rReplicationInstanceARN = Nothing
    , _rLastFailureMessage = Nothing
    }


-- | The settings for the replication task.
rReplicationTaskSettings :: Lens' ReplicationTask (Maybe Text)
rReplicationTaskSettings = lens _rReplicationTaskSettings (\ s a -> s{_rReplicationTaskSettings = a})

-- | The status of the replication task.
rStatus :: Lens' ReplicationTask (Maybe Text)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | The reason the replication task was stopped.
rStopReason :: Lens' ReplicationTask (Maybe Text)
rStopReason = lens _rStopReason (\ s a -> s{_rStopReason = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
rTargetEndpointARN :: Lens' ReplicationTask (Maybe Text)
rTargetEndpointARN = lens _rTargetEndpointARN (\ s a -> s{_rTargetEndpointARN = a})

-- | The user-assigned replication task identifier or name. Constraints:     * Must contain from 1 to 255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
rReplicationTaskIdentifier :: Lens' ReplicationTask (Maybe Text)
rReplicationTaskIdentifier = lens _rReplicationTaskIdentifier (\ s a -> s{_rReplicationTaskIdentifier = a})

-- | Indicates when you want a change data capture (CDC) operation to start. Use either @CdcStartPosition@ or @CdcStartTime@ to specify when you want the CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
rCdcStartPosition :: Lens' ReplicationTask (Maybe Text)
rCdcStartPosition = lens _rCdcStartPosition (\ s a -> s{_rCdcStartPosition = a})

-- | The date the replication task is scheduled to start.
rReplicationTaskStartDate :: Lens' ReplicationTask (Maybe UTCTime)
rReplicationTaskStartDate = lens _rReplicationTaskStartDate (\ s a -> s{_rReplicationTaskStartDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
rSourceEndpointARN :: Lens' ReplicationTask (Maybe Text)
rSourceEndpointARN = lens _rSourceEndpointARN (\ s a -> s{_rSourceEndpointARN = a})

-- | Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the @CdcStartPosition@ parameter to start a CDC operation that begins at that checkpoint.
rRecoveryCheckpoint :: Lens' ReplicationTask (Maybe Text)
rRecoveryCheckpoint = lens _rRecoveryCheckpoint (\ s a -> s{_rRecoveryCheckpoint = a})

-- | Table mappings specified in the task.
rTableMappings :: Lens' ReplicationTask (Maybe Text)
rTableMappings = lens _rTableMappings (\ s a -> s{_rTableMappings = a})

-- | The date the replication task was created.
rReplicationTaskCreationDate :: Lens' ReplicationTask (Maybe UTCTime)
rReplicationTaskCreationDate = lens _rReplicationTaskCreationDate (\ s a -> s{_rReplicationTaskCreationDate = a}) . mapping _Time

-- | The type of migration.
rMigrationType :: Lens' ReplicationTask (Maybe MigrationTypeValue)
rMigrationType = lens _rMigrationType (\ s a -> s{_rMigrationType = a})

-- | The Amazon Resource Name (ARN) of the replication task.
rReplicationTaskARN :: Lens' ReplicationTask (Maybe Text)
rReplicationTaskARN = lens _rReplicationTaskARN (\ s a -> s{_rReplicationTaskARN = a})

-- | Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration User Guide./
rTaskData :: Lens' ReplicationTask (Maybe Text)
rTaskData = lens _rTaskData (\ s a -> s{_rTaskData = a})

-- | Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “
rCdcStopPosition :: Lens' ReplicationTask (Maybe Text)
rCdcStopPosition = lens _rCdcStopPosition (\ s a -> s{_rCdcStopPosition = a})

-- | The statistics for the task, including elapsed time, tables loaded, and table errors.
rReplicationTaskStats :: Lens' ReplicationTask (Maybe ReplicationTaskStats)
rReplicationTaskStats = lens _rReplicationTaskStats (\ s a -> s{_rReplicationTaskStats = a})

-- | The Amazon Resource Name (ARN) of the replication instance.
rReplicationInstanceARN :: Lens' ReplicationTask (Maybe Text)
rReplicationInstanceARN = lens _rReplicationInstanceARN (\ s a -> s{_rReplicationInstanceARN = a})

-- | The last error (failure) message generated for the replication instance.
rLastFailureMessage :: Lens' ReplicationTask (Maybe Text)
rLastFailureMessage = lens _rLastFailureMessage (\ s a -> s{_rLastFailureMessage = a})

instance FromJSON ReplicationTask where
        parseJSON
          = withObject "ReplicationTask"
              (\ x ->
                 ReplicationTask' <$>
                   (x .:? "ReplicationTaskSettings") <*>
                     (x .:? "Status")
                     <*> (x .:? "StopReason")
                     <*> (x .:? "TargetEndpointArn")
                     <*> (x .:? "ReplicationTaskIdentifier")
                     <*> (x .:? "CdcStartPosition")
                     <*> (x .:? "ReplicationTaskStartDate")
                     <*> (x .:? "SourceEndpointArn")
                     <*> (x .:? "RecoveryCheckpoint")
                     <*> (x .:? "TableMappings")
                     <*> (x .:? "ReplicationTaskCreationDate")
                     <*> (x .:? "MigrationType")
                     <*> (x .:? "ReplicationTaskArn")
                     <*> (x .:? "TaskData")
                     <*> (x .:? "CdcStopPosition")
                     <*> (x .:? "ReplicationTaskStats")
                     <*> (x .:? "ReplicationInstanceArn")
                     <*> (x .:? "LastFailureMessage"))

instance Hashable ReplicationTask where

instance NFData ReplicationTask where

-- | The task assessment report in JSON format.
--
--
--
-- /See:/ 'replicationTaskAssessmentResult' smart constructor.
data ReplicationTaskAssessmentResult =
  ReplicationTaskAssessmentResult'
    { _rtarAssessmentResults                 :: !(Maybe Text)
    , _rtarAssessmentResultsFile             :: !(Maybe Text)
    , _rtarReplicationTaskIdentifier         :: !(Maybe Text)
    , _rtarAssessmentStatus                  :: !(Maybe Text)
    , _rtarS3ObjectURL                       :: !(Maybe Text)
    , _rtarReplicationTaskLastAssessmentDate :: !(Maybe POSIX)
    , _rtarReplicationTaskARN                :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationTaskAssessmentResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtarAssessmentResults' - The task assessment results in JSON format.
--
-- * 'rtarAssessmentResultsFile' - The file containing the results of the task assessment.
--
-- * 'rtarReplicationTaskIdentifier' - The replication task identifier of the task on which the task assessment was run.
--
-- * 'rtarAssessmentStatus' - The status of the task assessment.
--
-- * 'rtarS3ObjectURL' - The URL of the S3 object containing the task assessment results.
--
-- * 'rtarReplicationTaskLastAssessmentDate' - The date the task assessment was completed.
--
-- * 'rtarReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
replicationTaskAssessmentResult
    :: ReplicationTaskAssessmentResult
replicationTaskAssessmentResult =
  ReplicationTaskAssessmentResult'
    { _rtarAssessmentResults = Nothing
    , _rtarAssessmentResultsFile = Nothing
    , _rtarReplicationTaskIdentifier = Nothing
    , _rtarAssessmentStatus = Nothing
    , _rtarS3ObjectURL = Nothing
    , _rtarReplicationTaskLastAssessmentDate = Nothing
    , _rtarReplicationTaskARN = Nothing
    }


-- | The task assessment results in JSON format.
rtarAssessmentResults :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarAssessmentResults = lens _rtarAssessmentResults (\ s a -> s{_rtarAssessmentResults = a})

-- | The file containing the results of the task assessment.
rtarAssessmentResultsFile :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarAssessmentResultsFile = lens _rtarAssessmentResultsFile (\ s a -> s{_rtarAssessmentResultsFile = a})

-- | The replication task identifier of the task on which the task assessment was run.
rtarReplicationTaskIdentifier :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarReplicationTaskIdentifier = lens _rtarReplicationTaskIdentifier (\ s a -> s{_rtarReplicationTaskIdentifier = a})

-- | The status of the task assessment.
rtarAssessmentStatus :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarAssessmentStatus = lens _rtarAssessmentStatus (\ s a -> s{_rtarAssessmentStatus = a})

-- | The URL of the S3 object containing the task assessment results.
rtarS3ObjectURL :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarS3ObjectURL = lens _rtarS3ObjectURL (\ s a -> s{_rtarS3ObjectURL = a})

-- | The date the task assessment was completed.
rtarReplicationTaskLastAssessmentDate :: Lens' ReplicationTaskAssessmentResult (Maybe UTCTime)
rtarReplicationTaskLastAssessmentDate = lens _rtarReplicationTaskLastAssessmentDate (\ s a -> s{_rtarReplicationTaskLastAssessmentDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the replication task.
rtarReplicationTaskARN :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
rtarReplicationTaskARN = lens _rtarReplicationTaskARN (\ s a -> s{_rtarReplicationTaskARN = a})

instance FromJSON ReplicationTaskAssessmentResult
         where
        parseJSON
          = withObject "ReplicationTaskAssessmentResult"
              (\ x ->
                 ReplicationTaskAssessmentResult' <$>
                   (x .:? "AssessmentResults") <*>
                     (x .:? "AssessmentResultsFile")
                     <*> (x .:? "ReplicationTaskIdentifier")
                     <*> (x .:? "AssessmentStatus")
                     <*> (x .:? "S3ObjectUrl")
                     <*> (x .:? "ReplicationTaskLastAssessmentDate")
                     <*> (x .:? "ReplicationTaskArn"))

instance Hashable ReplicationTaskAssessmentResult
         where

instance NFData ReplicationTaskAssessmentResult where

-- | In response to a request by the @DescribeReplicationTasks@ operation, this object provides a collection of statistics about a replication task.
--
--
--
-- /See:/ 'replicationTaskStats' smart constructor.
data ReplicationTaskStats =
  ReplicationTaskStats'
    { _rtsStopDate                :: !(Maybe POSIX)
    , _rtsFullLoadProgressPercent :: !(Maybe Int)
    , _rtsFullLoadStartDate       :: !(Maybe POSIX)
    , _rtsElapsedTimeMillis       :: !(Maybe Integer)
    , _rtsStartDate               :: !(Maybe POSIX)
    , _rtsTablesErrored           :: !(Maybe Int)
    , _rtsFullLoadFinishDate      :: !(Maybe POSIX)
    , _rtsTablesLoaded            :: !(Maybe Int)
    , _rtsTablesQueued            :: !(Maybe Int)
    , _rtsTablesLoading           :: !(Maybe Int)
    , _rtsFreshStartDate          :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicationTaskStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtsStopDate' - The date the replication task was stopped.
--
-- * 'rtsFullLoadProgressPercent' - The percent complete for the full load migration task.
--
-- * 'rtsFullLoadStartDate' - The date the replication task full load was started.
--
-- * 'rtsElapsedTimeMillis' - The elapsed time of the task, in milliseconds.
--
-- * 'rtsStartDate' - The date the replication task was started either with a fresh start or a resume. For more information, see <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType StartReplicationTaskType> .
--
-- * 'rtsTablesErrored' - The number of errors that have occurred during this task.
--
-- * 'rtsFullLoadFinishDate' - The date the replication task full load was completed.
--
-- * 'rtsTablesLoaded' - The number of tables loaded for this task.
--
-- * 'rtsTablesQueued' - The number of tables queued for this task.
--
-- * 'rtsTablesLoading' - The number of tables currently loading for this task.
--
-- * 'rtsFreshStartDate' - The date the replication task was started either with a fresh start or a target reload.
replicationTaskStats
    :: ReplicationTaskStats
replicationTaskStats =
  ReplicationTaskStats'
    { _rtsStopDate = Nothing
    , _rtsFullLoadProgressPercent = Nothing
    , _rtsFullLoadStartDate = Nothing
    , _rtsElapsedTimeMillis = Nothing
    , _rtsStartDate = Nothing
    , _rtsTablesErrored = Nothing
    , _rtsFullLoadFinishDate = Nothing
    , _rtsTablesLoaded = Nothing
    , _rtsTablesQueued = Nothing
    , _rtsTablesLoading = Nothing
    , _rtsFreshStartDate = Nothing
    }


-- | The date the replication task was stopped.
rtsStopDate :: Lens' ReplicationTaskStats (Maybe UTCTime)
rtsStopDate = lens _rtsStopDate (\ s a -> s{_rtsStopDate = a}) . mapping _Time

-- | The percent complete for the full load migration task.
rtsFullLoadProgressPercent :: Lens' ReplicationTaskStats (Maybe Int)
rtsFullLoadProgressPercent = lens _rtsFullLoadProgressPercent (\ s a -> s{_rtsFullLoadProgressPercent = a})

-- | The date the replication task full load was started.
rtsFullLoadStartDate :: Lens' ReplicationTaskStats (Maybe UTCTime)
rtsFullLoadStartDate = lens _rtsFullLoadStartDate (\ s a -> s{_rtsFullLoadStartDate = a}) . mapping _Time

-- | The elapsed time of the task, in milliseconds.
rtsElapsedTimeMillis :: Lens' ReplicationTaskStats (Maybe Integer)
rtsElapsedTimeMillis = lens _rtsElapsedTimeMillis (\ s a -> s{_rtsElapsedTimeMillis = a})

-- | The date the replication task was started either with a fresh start or a resume. For more information, see <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType StartReplicationTaskType> .
rtsStartDate :: Lens' ReplicationTaskStats (Maybe UTCTime)
rtsStartDate = lens _rtsStartDate (\ s a -> s{_rtsStartDate = a}) . mapping _Time

-- | The number of errors that have occurred during this task.
rtsTablesErrored :: Lens' ReplicationTaskStats (Maybe Int)
rtsTablesErrored = lens _rtsTablesErrored (\ s a -> s{_rtsTablesErrored = a})

-- | The date the replication task full load was completed.
rtsFullLoadFinishDate :: Lens' ReplicationTaskStats (Maybe UTCTime)
rtsFullLoadFinishDate = lens _rtsFullLoadFinishDate (\ s a -> s{_rtsFullLoadFinishDate = a}) . mapping _Time

-- | The number of tables loaded for this task.
rtsTablesLoaded :: Lens' ReplicationTaskStats (Maybe Int)
rtsTablesLoaded = lens _rtsTablesLoaded (\ s a -> s{_rtsTablesLoaded = a})

-- | The number of tables queued for this task.
rtsTablesQueued :: Lens' ReplicationTaskStats (Maybe Int)
rtsTablesQueued = lens _rtsTablesQueued (\ s a -> s{_rtsTablesQueued = a})

-- | The number of tables currently loading for this task.
rtsTablesLoading :: Lens' ReplicationTaskStats (Maybe Int)
rtsTablesLoading = lens _rtsTablesLoading (\ s a -> s{_rtsTablesLoading = a})

-- | The date the replication task was started either with a fresh start or a target reload.
rtsFreshStartDate :: Lens' ReplicationTaskStats (Maybe UTCTime)
rtsFreshStartDate = lens _rtsFreshStartDate (\ s a -> s{_rtsFreshStartDate = a}) . mapping _Time

instance FromJSON ReplicationTaskStats where
        parseJSON
          = withObject "ReplicationTaskStats"
              (\ x ->
                 ReplicationTaskStats' <$>
                   (x .:? "StopDate") <*>
                     (x .:? "FullLoadProgressPercent")
                     <*> (x .:? "FullLoadStartDate")
                     <*> (x .:? "ElapsedTimeMillis")
                     <*> (x .:? "StartDate")
                     <*> (x .:? "TablesErrored")
                     <*> (x .:? "FullLoadFinishDate")
                     <*> (x .:? "TablesLoaded")
                     <*> (x .:? "TablesQueued")
                     <*> (x .:? "TablesLoading")
                     <*> (x .:? "FreshStartDate"))

instance Hashable ReplicationTaskStats where

instance NFData ReplicationTaskStats where

-- | Identifies an AWS DMS resource and any pending actions for it.
--
--
--
-- /See:/ 'resourcePendingMaintenanceActions' smart constructor.
data ResourcePendingMaintenanceActions =
  ResourcePendingMaintenanceActions'
    { _rpmaPendingMaintenanceActionDetails :: !(Maybe [PendingMaintenanceAction])
    , _rpmaResourceIdentifier :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePendingMaintenanceActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpmaPendingMaintenanceActionDetails' - Detailed information about the pending maintenance action.
--
-- * 'rpmaResourceIdentifier' - The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action applies to. For information about creating an ARN, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html Constructing an Amazon Resource Name (ARN) for AWS DMS> in the DMS documentation.
resourcePendingMaintenanceActions
    :: ResourcePendingMaintenanceActions
resourcePendingMaintenanceActions =
  ResourcePendingMaintenanceActions'
    { _rpmaPendingMaintenanceActionDetails = Nothing
    , _rpmaResourceIdentifier = Nothing
    }


-- | Detailed information about the pending maintenance action.
rpmaPendingMaintenanceActionDetails :: Lens' ResourcePendingMaintenanceActions [PendingMaintenanceAction]
rpmaPendingMaintenanceActionDetails = lens _rpmaPendingMaintenanceActionDetails (\ s a -> s{_rpmaPendingMaintenanceActionDetails = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action applies to. For information about creating an ARN, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html Constructing an Amazon Resource Name (ARN) for AWS DMS> in the DMS documentation.
rpmaResourceIdentifier :: Lens' ResourcePendingMaintenanceActions (Maybe Text)
rpmaResourceIdentifier = lens _rpmaResourceIdentifier (\ s a -> s{_rpmaResourceIdentifier = a})

instance FromJSON ResourcePendingMaintenanceActions
         where
        parseJSON
          = withObject "ResourcePendingMaintenanceActions"
              (\ x ->
                 ResourcePendingMaintenanceActions' <$>
                   (x .:? "PendingMaintenanceActionDetails" .!= mempty)
                     <*> (x .:? "ResourceIdentifier"))

instance Hashable ResourcePendingMaintenanceActions
         where

instance NFData ResourcePendingMaintenanceActions
         where

-- | Settings for exporting data to Amazon S3.
--
--
--
-- /See:/ 's3Settings' smart constructor.
data S3Settings =
  S3Settings'
    { _ssParquetVersion                :: !(Maybe ParquetVersionValue)
    , _ssParquetTimestampInMillisecond :: !(Maybe Bool)
    , _ssIncludeOpForFullLoad          :: !(Maybe Bool)
    , _ssCSVDelimiter                  :: !(Maybe Text)
    , _ssServiceAccessRoleARN          :: !(Maybe Text)
    , _ssBucketFolder                  :: !(Maybe Text)
    , _ssDataFormat                    :: !(Maybe DataFormatValue)
    , _ssEncodingType                  :: !(Maybe EncodingTypeValue)
    , _ssExternalTableDefinition       :: !(Maybe Text)
    , _ssDictPageSizeLimit             :: !(Maybe Int)
    , _ssBucketName                    :: !(Maybe Text)
    , _ssEncryptionMode                :: !(Maybe EncryptionModeValue)
    , _ssEnableStatistics              :: !(Maybe Bool)
    , _ssCdcInsertsOnly                :: !(Maybe Bool)
    , _ssTimestampColumnName           :: !(Maybe Text)
    , _ssCSVRowDelimiter               :: !(Maybe Text)
    , _ssCompressionType               :: !(Maybe CompressionTypeValue)
    , _ssServerSideEncryptionKMSKeyId  :: !(Maybe Text)
    , _ssDataPageSize                  :: !(Maybe Int)
    , _ssCdcInsertsAndUpdates          :: !(Maybe Bool)
    , _ssRowGroupLength                :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'S3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssParquetVersion' - The version of the Apache Parquet format that you want to use: @parquet_1_0@ (the default) or @parquet_2_0@ .
--
-- * 'ssParquetTimestampInMillisecond' - A value that specifies the precision of any @TIMESTAMP@ column values that are written to an Amazon S3 object file in .parquet format. When @ParquetTimestampInMillisecond@ is set to @true@ or @y@ , AWS DMS writes all @TIMESTAMP@ columns in a .parquet formatted file with millisecond precision. Otherwise, DMS writes them with microsecond precision. Currently, Amazon Athena and AWS Glue can handle only millisecond precision for @TIMESTAMP@ values. Set this parameter to @true@ for S3 endpoint object files that are .parquet formatted only if you plan to query or process the data with Athena or AWS Glue.
--
-- * 'ssIncludeOpForFullLoad' - A value that enables a full load to write INSERT operations to the comma-separated value (.csv) output files only to indicate how the rows were added to the source database. For full load, records can only be inserted. By default (the @false@ setting), no information is recorded in these output files for a full load to indicate that the rows were inserted at the source database. If @IncludeOpForFullLoad@ is set to @true@ or @y@ , the INSERT is recorded as an I annotation in the first field of the .csv file. This allows the format of your target records from a full load to be consistent with the target records from a CDC load.
--
-- * 'ssCSVDelimiter' - The delimiter used to separate columns in the source files. The default is a comma.
--
-- * 'ssServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by the service access IAM role.
--
-- * 'ssBucketFolder' - An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path @/bucketFolder/ //schema_name/ //table_name/ /@ . If this parameter isn't specified, then the path used is @/schema_name/ //table_name/ /@ .
--
-- * 'ssDataFormat' - The format of the data that you want to use for output. You can choose one of the following:      * @csv@ : This is a row-based file format with comma-separated values (.csv).      * @parquet@ : Apache Parquet (.parquet) is a columnar storage file format that features efficient compression and provides faster query response.
--
-- * 'ssEncodingType' - The type of encoding you are using:      * @RLE_DICTIONARY@ uses a combination of bit-packing and run-length encoding to store repeated values more efficiently. This is the default.     * @PLAIN@ doesn't use encoding at all. Values are stored as they are.     * @PLAIN_DICTIONARY@ builds a dictionary of the values encountered in a given column. The dictionary is stored in a dictionary page for each column chunk.
--
-- * 'ssExternalTableDefinition' - The external table definition.
--
-- * 'ssDictPageSizeLimit' - The maximum size of an encoded dictionary page of a column. If the dictionary page exceeds this, this column is stored using an encoding type of @PLAIN@ . This parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page before it reverts to @PLAIN@ encoding. This size is used for .parquet file format only.
--
-- * 'ssBucketName' - The name of the S3 bucket.
--
-- * 'ssEncryptionMode' - The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ . To use @SSE_S3@ , you need an AWS Identity and Access Management (IAM) role with permission to allow @"arn:aws:s3:::dms-*"@ to use the following actions:     * @s3:CreateBucket@      * @s3:ListBucket@      * @s3:DeleteBucket@      * @s3:GetBucketLocation@      * @s3:GetObject@      * @s3:PutObject@      * @s3:DeleteObject@      * @s3:GetObjectVersion@      * @s3:GetBucketPolicy@      * @s3:PutBucketPolicy@      * @s3:DeleteBucketPolicy@
--
-- * 'ssEnableStatistics' - A value that enables statistics for Parquet pages and row groups. Choose @true@ to enable statistics, @false@ to disable. Statistics include @NULL@ , @DISTINCT@ , @MAX@ , and @MIN@ values. This parameter defaults to @true@ . This value is used for .parquet file format only.
--
-- * 'ssCdcInsertsOnly' - A value that enables a change data capture (CDC) load to write only INSERT operations to .csv or columnar storage (.parquet) output files. By default (the @false@ setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or deleted at the source database for a CDC load to the target. If @CdcInsertsOnly@ is set to @true@ or @y@ , only INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format only, how these INSERTs are recorded depends on the value of @IncludeOpForFullLoad@ . If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to I to indicate the INSERT operation at the source. If @IncludeOpForFullLoad@ is set to @false@ , every CDC record is written without a first field to indicate the INSERT operation at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
--
-- * 'ssTimestampColumnName' - A value that when nonblank causes AWS DMS to add a column with timestamp information to the endpoint data for an Amazon S3 target. DMS includes an additional @STRING@ column in the .csv or .parquet object files of your migrated data when you set @TimestampColumnName@ to a nonblank value. For a full load, each row of this timestamp column contains a timestamp for when the data was transferred from the source to the target by DMS.  For a change data capture (CDC) load, each row of the timestamp column contains the timestamp for the commit of that row in the source database. The string format for this timestamp column value is @yyyy-MM-dd HH:mm:ss.SSSSSS@ . By default, the precision of this value is in microseconds. For a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS for the source database. When the @AddColumnName@ parameter is set to @true@ , DMS also includes a name for the timestamp column that you set with @TimestampColumnName@ .
--
-- * 'ssCSVRowDelimiter' - The delimiter used to separate rows in the source files. The default is a carriage return (@\n@ ).
--
-- * 'ssCompressionType' - An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed. This parameter applies to both .csv and .parquet file formats.
--
-- * 'ssServerSideEncryptionKMSKeyId' - If you are using @SSE_KMS@ for the @EncryptionMode@ , provide the AWS KMS key ID. The key that you use needs an attached policy that enables AWS Identity and Access Management (IAM) user permissions and allows use of the key. Here is a CLI example: @aws dms create-endpoint --endpoint-identifier /value/ --endpoint-type target --engine-name s3 --s3-settings ServiceAccessRoleArn=/value/ ,BucketFolder=/value/ ,BucketName=/value/ ,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=/value/ @
--
-- * 'ssDataPageSize' - The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB). This number is used for .parquet file format only.
--
-- * 'ssCdcInsertsAndUpdates' - A value that enables a change data capture (CDC) load to write INSERT and UPDATE operations to .csv or .parquet (columnar storage) output files. The default setting is @false@ , but when @CdcInsertsAndUpdates@ is set to @true@ or @y@ , INSERTs and UPDATEs from the source database are migrated to the .csv or .parquet file.  For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the value of the @IncludeOpForFullLoad@ parameter. If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to either @I@ or @U@ to indicate INSERT and UPDATE operations at the source. But if @IncludeOpForFullLoad@ is set to @false@ , CDC records are written without an indication of INSERT or UPDATE operations at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
--
-- * 'ssRowGroupLength' - The number of rows in a row group. A smaller row group size provides faster reads. But as the number of row groups grows, the slower writes become. This parameter defaults to 10,000 rows. This number is used for .parquet file format only.  If you choose a value larger than the maximum, @RowGroupLength@ is set to the max row group length in bytes (64 * 1024 * 1024).
s3Settings
    :: S3Settings
s3Settings =
  S3Settings'
    { _ssParquetVersion = Nothing
    , _ssParquetTimestampInMillisecond = Nothing
    , _ssIncludeOpForFullLoad = Nothing
    , _ssCSVDelimiter = Nothing
    , _ssServiceAccessRoleARN = Nothing
    , _ssBucketFolder = Nothing
    , _ssDataFormat = Nothing
    , _ssEncodingType = Nothing
    , _ssExternalTableDefinition = Nothing
    , _ssDictPageSizeLimit = Nothing
    , _ssBucketName = Nothing
    , _ssEncryptionMode = Nothing
    , _ssEnableStatistics = Nothing
    , _ssCdcInsertsOnly = Nothing
    , _ssTimestampColumnName = Nothing
    , _ssCSVRowDelimiter = Nothing
    , _ssCompressionType = Nothing
    , _ssServerSideEncryptionKMSKeyId = Nothing
    , _ssDataPageSize = Nothing
    , _ssCdcInsertsAndUpdates = Nothing
    , _ssRowGroupLength = Nothing
    }


-- | The version of the Apache Parquet format that you want to use: @parquet_1_0@ (the default) or @parquet_2_0@ .
ssParquetVersion :: Lens' S3Settings (Maybe ParquetVersionValue)
ssParquetVersion = lens _ssParquetVersion (\ s a -> s{_ssParquetVersion = a})

-- | A value that specifies the precision of any @TIMESTAMP@ column values that are written to an Amazon S3 object file in .parquet format. When @ParquetTimestampInMillisecond@ is set to @true@ or @y@ , AWS DMS writes all @TIMESTAMP@ columns in a .parquet formatted file with millisecond precision. Otherwise, DMS writes them with microsecond precision. Currently, Amazon Athena and AWS Glue can handle only millisecond precision for @TIMESTAMP@ values. Set this parameter to @true@ for S3 endpoint object files that are .parquet formatted only if you plan to query or process the data with Athena or AWS Glue.
ssParquetTimestampInMillisecond :: Lens' S3Settings (Maybe Bool)
ssParquetTimestampInMillisecond = lens _ssParquetTimestampInMillisecond (\ s a -> s{_ssParquetTimestampInMillisecond = a})

-- | A value that enables a full load to write INSERT operations to the comma-separated value (.csv) output files only to indicate how the rows were added to the source database. For full load, records can only be inserted. By default (the @false@ setting), no information is recorded in these output files for a full load to indicate that the rows were inserted at the source database. If @IncludeOpForFullLoad@ is set to @true@ or @y@ , the INSERT is recorded as an I annotation in the first field of the .csv file. This allows the format of your target records from a full load to be consistent with the target records from a CDC load.
ssIncludeOpForFullLoad :: Lens' S3Settings (Maybe Bool)
ssIncludeOpForFullLoad = lens _ssIncludeOpForFullLoad (\ s a -> s{_ssIncludeOpForFullLoad = a})

-- | The delimiter used to separate columns in the source files. The default is a comma.
ssCSVDelimiter :: Lens' S3Settings (Maybe Text)
ssCSVDelimiter = lens _ssCSVDelimiter (\ s a -> s{_ssCSVDelimiter = a})

-- | The Amazon Resource Name (ARN) used by the service access IAM role.
ssServiceAccessRoleARN :: Lens' S3Settings (Maybe Text)
ssServiceAccessRoleARN = lens _ssServiceAccessRoleARN (\ s a -> s{_ssServiceAccessRoleARN = a})

-- | An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path @/bucketFolder/ //schema_name/ //table_name/ /@ . If this parameter isn't specified, then the path used is @/schema_name/ //table_name/ /@ .
ssBucketFolder :: Lens' S3Settings (Maybe Text)
ssBucketFolder = lens _ssBucketFolder (\ s a -> s{_ssBucketFolder = a})

-- | The format of the data that you want to use for output. You can choose one of the following:      * @csv@ : This is a row-based file format with comma-separated values (.csv).      * @parquet@ : Apache Parquet (.parquet) is a columnar storage file format that features efficient compression and provides faster query response.
ssDataFormat :: Lens' S3Settings (Maybe DataFormatValue)
ssDataFormat = lens _ssDataFormat (\ s a -> s{_ssDataFormat = a})

-- | The type of encoding you are using:      * @RLE_DICTIONARY@ uses a combination of bit-packing and run-length encoding to store repeated values more efficiently. This is the default.     * @PLAIN@ doesn't use encoding at all. Values are stored as they are.     * @PLAIN_DICTIONARY@ builds a dictionary of the values encountered in a given column. The dictionary is stored in a dictionary page for each column chunk.
ssEncodingType :: Lens' S3Settings (Maybe EncodingTypeValue)
ssEncodingType = lens _ssEncodingType (\ s a -> s{_ssEncodingType = a})

-- | The external table definition.
ssExternalTableDefinition :: Lens' S3Settings (Maybe Text)
ssExternalTableDefinition = lens _ssExternalTableDefinition (\ s a -> s{_ssExternalTableDefinition = a})

-- | The maximum size of an encoded dictionary page of a column. If the dictionary page exceeds this, this column is stored using an encoding type of @PLAIN@ . This parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page before it reverts to @PLAIN@ encoding. This size is used for .parquet file format only.
ssDictPageSizeLimit :: Lens' S3Settings (Maybe Int)
ssDictPageSizeLimit = lens _ssDictPageSizeLimit (\ s a -> s{_ssDictPageSizeLimit = a})

-- | The name of the S3 bucket.
ssBucketName :: Lens' S3Settings (Maybe Text)
ssBucketName = lens _ssBucketName (\ s a -> s{_ssBucketName = a})

-- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ . To use @SSE_S3@ , you need an AWS Identity and Access Management (IAM) role with permission to allow @"arn:aws:s3:::dms-*"@ to use the following actions:     * @s3:CreateBucket@      * @s3:ListBucket@      * @s3:DeleteBucket@      * @s3:GetBucketLocation@      * @s3:GetObject@      * @s3:PutObject@      * @s3:DeleteObject@      * @s3:GetObjectVersion@      * @s3:GetBucketPolicy@      * @s3:PutBucketPolicy@      * @s3:DeleteBucketPolicy@
ssEncryptionMode :: Lens' S3Settings (Maybe EncryptionModeValue)
ssEncryptionMode = lens _ssEncryptionMode (\ s a -> s{_ssEncryptionMode = a})

-- | A value that enables statistics for Parquet pages and row groups. Choose @true@ to enable statistics, @false@ to disable. Statistics include @NULL@ , @DISTINCT@ , @MAX@ , and @MIN@ values. This parameter defaults to @true@ . This value is used for .parquet file format only.
ssEnableStatistics :: Lens' S3Settings (Maybe Bool)
ssEnableStatistics = lens _ssEnableStatistics (\ s a -> s{_ssEnableStatistics = a})

-- | A value that enables a change data capture (CDC) load to write only INSERT operations to .csv or columnar storage (.parquet) output files. By default (the @false@ setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or deleted at the source database for a CDC load to the target. If @CdcInsertsOnly@ is set to @true@ or @y@ , only INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format only, how these INSERTs are recorded depends on the value of @IncludeOpForFullLoad@ . If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to I to indicate the INSERT operation at the source. If @IncludeOpForFullLoad@ is set to @false@ , every CDC record is written without a first field to indicate the INSERT operation at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
ssCdcInsertsOnly :: Lens' S3Settings (Maybe Bool)
ssCdcInsertsOnly = lens _ssCdcInsertsOnly (\ s a -> s{_ssCdcInsertsOnly = a})

-- | A value that when nonblank causes AWS DMS to add a column with timestamp information to the endpoint data for an Amazon S3 target. DMS includes an additional @STRING@ column in the .csv or .parquet object files of your migrated data when you set @TimestampColumnName@ to a nonblank value. For a full load, each row of this timestamp column contains a timestamp for when the data was transferred from the source to the target by DMS.  For a change data capture (CDC) load, each row of the timestamp column contains the timestamp for the commit of that row in the source database. The string format for this timestamp column value is @yyyy-MM-dd HH:mm:ss.SSSSSS@ . By default, the precision of this value is in microseconds. For a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS for the source database. When the @AddColumnName@ parameter is set to @true@ , DMS also includes a name for the timestamp column that you set with @TimestampColumnName@ .
ssTimestampColumnName :: Lens' S3Settings (Maybe Text)
ssTimestampColumnName = lens _ssTimestampColumnName (\ s a -> s{_ssTimestampColumnName = a})

-- | The delimiter used to separate rows in the source files. The default is a carriage return (@\n@ ).
ssCSVRowDelimiter :: Lens' S3Settings (Maybe Text)
ssCSVRowDelimiter = lens _ssCSVRowDelimiter (\ s a -> s{_ssCSVRowDelimiter = a})

-- | An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed. This parameter applies to both .csv and .parquet file formats.
ssCompressionType :: Lens' S3Settings (Maybe CompressionTypeValue)
ssCompressionType = lens _ssCompressionType (\ s a -> s{_ssCompressionType = a})

-- | If you are using @SSE_KMS@ for the @EncryptionMode@ , provide the AWS KMS key ID. The key that you use needs an attached policy that enables AWS Identity and Access Management (IAM) user permissions and allows use of the key. Here is a CLI example: @aws dms create-endpoint --endpoint-identifier /value/ --endpoint-type target --engine-name s3 --s3-settings ServiceAccessRoleArn=/value/ ,BucketFolder=/value/ ,BucketName=/value/ ,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=/value/ @
ssServerSideEncryptionKMSKeyId :: Lens' S3Settings (Maybe Text)
ssServerSideEncryptionKMSKeyId = lens _ssServerSideEncryptionKMSKeyId (\ s a -> s{_ssServerSideEncryptionKMSKeyId = a})

-- | The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB). This number is used for .parquet file format only.
ssDataPageSize :: Lens' S3Settings (Maybe Int)
ssDataPageSize = lens _ssDataPageSize (\ s a -> s{_ssDataPageSize = a})

-- | A value that enables a change data capture (CDC) load to write INSERT and UPDATE operations to .csv or .parquet (columnar storage) output files. The default setting is @false@ , but when @CdcInsertsAndUpdates@ is set to @true@ or @y@ , INSERTs and UPDATEs from the source database are migrated to the .csv or .parquet file.  For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the value of the @IncludeOpForFullLoad@ parameter. If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to either @I@ or @U@ to indicate INSERT and UPDATE operations at the source. But if @IncludeOpForFullLoad@ is set to @false@ , CDC records are written without an indication of INSERT or UPDATE operations at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
ssCdcInsertsAndUpdates :: Lens' S3Settings (Maybe Bool)
ssCdcInsertsAndUpdates = lens _ssCdcInsertsAndUpdates (\ s a -> s{_ssCdcInsertsAndUpdates = a})

-- | The number of rows in a row group. A smaller row group size provides faster reads. But as the number of row groups grows, the slower writes become. This parameter defaults to 10,000 rows. This number is used for .parquet file format only.  If you choose a value larger than the maximum, @RowGroupLength@ is set to the max row group length in bytes (64 * 1024 * 1024).
ssRowGroupLength :: Lens' S3Settings (Maybe Int)
ssRowGroupLength = lens _ssRowGroupLength (\ s a -> s{_ssRowGroupLength = a})

instance FromJSON S3Settings where
        parseJSON
          = withObject "S3Settings"
              (\ x ->
                 S3Settings' <$>
                   (x .:? "ParquetVersion") <*>
                     (x .:? "ParquetTimestampInMillisecond")
                     <*> (x .:? "IncludeOpForFullLoad")
                     <*> (x .:? "CsvDelimiter")
                     <*> (x .:? "ServiceAccessRoleArn")
                     <*> (x .:? "BucketFolder")
                     <*> (x .:? "DataFormat")
                     <*> (x .:? "EncodingType")
                     <*> (x .:? "ExternalTableDefinition")
                     <*> (x .:? "DictPageSizeLimit")
                     <*> (x .:? "BucketName")
                     <*> (x .:? "EncryptionMode")
                     <*> (x .:? "EnableStatistics")
                     <*> (x .:? "CdcInsertsOnly")
                     <*> (x .:? "TimestampColumnName")
                     <*> (x .:? "CsvRowDelimiter")
                     <*> (x .:? "CompressionType")
                     <*> (x .:? "ServerSideEncryptionKmsKeyId")
                     <*> (x .:? "DataPageSize")
                     <*> (x .:? "CdcInsertsAndUpdates")
                     <*> (x .:? "RowGroupLength"))

instance Hashable S3Settings where

instance NFData S3Settings where

instance ToJSON S3Settings where
        toJSON S3Settings'{..}
          = object
              (catMaybes
                 [("ParquetVersion" .=) <$> _ssParquetVersion,
                  ("ParquetTimestampInMillisecond" .=) <$>
                    _ssParquetTimestampInMillisecond,
                  ("IncludeOpForFullLoad" .=) <$>
                    _ssIncludeOpForFullLoad,
                  ("CsvDelimiter" .=) <$> _ssCSVDelimiter,
                  ("ServiceAccessRoleArn" .=) <$>
                    _ssServiceAccessRoleARN,
                  ("BucketFolder" .=) <$> _ssBucketFolder,
                  ("DataFormat" .=) <$> _ssDataFormat,
                  ("EncodingType" .=) <$> _ssEncodingType,
                  ("ExternalTableDefinition" .=) <$>
                    _ssExternalTableDefinition,
                  ("DictPageSizeLimit" .=) <$> _ssDictPageSizeLimit,
                  ("BucketName" .=) <$> _ssBucketName,
                  ("EncryptionMode" .=) <$> _ssEncryptionMode,
                  ("EnableStatistics" .=) <$> _ssEnableStatistics,
                  ("CdcInsertsOnly" .=) <$> _ssCdcInsertsOnly,
                  ("TimestampColumnName" .=) <$>
                    _ssTimestampColumnName,
                  ("CsvRowDelimiter" .=) <$> _ssCSVRowDelimiter,
                  ("CompressionType" .=) <$> _ssCompressionType,
                  ("ServerSideEncryptionKmsKeyId" .=) <$>
                    _ssServerSideEncryptionKMSKeyId,
                  ("DataPageSize" .=) <$> _ssDataPageSize,
                  ("CdcInsertsAndUpdates" .=) <$>
                    _ssCdcInsertsAndUpdates,
                  ("RowGroupLength" .=) <$> _ssRowGroupLength])

-- | In response to a request by the @DescribeReplicationSubnetGroup@ operation, this object identifies a subnet by its given Availability Zone, subnet identifier, and status.
--
--
--
-- /See:/ 'subnet' smart constructor.
data Subnet =
  Subnet'
    { _sSubnetStatus           :: !(Maybe Text)
    , _sSubnetIdentifier       :: !(Maybe Text)
    , _sSubnetAvailabilityZone :: !(Maybe AvailabilityZone)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Subnet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSubnetStatus' - The status of the subnet.
--
-- * 'sSubnetIdentifier' - The subnet identifier.
--
-- * 'sSubnetAvailabilityZone' - The Availability Zone of the subnet.
subnet
    :: Subnet
subnet =
  Subnet'
    { _sSubnetStatus = Nothing
    , _sSubnetIdentifier = Nothing
    , _sSubnetAvailabilityZone = Nothing
    }


-- | The status of the subnet.
sSubnetStatus :: Lens' Subnet (Maybe Text)
sSubnetStatus = lens _sSubnetStatus (\ s a -> s{_sSubnetStatus = a})

-- | The subnet identifier.
sSubnetIdentifier :: Lens' Subnet (Maybe Text)
sSubnetIdentifier = lens _sSubnetIdentifier (\ s a -> s{_sSubnetIdentifier = a})

-- | The Availability Zone of the subnet.
sSubnetAvailabilityZone :: Lens' Subnet (Maybe AvailabilityZone)
sSubnetAvailabilityZone = lens _sSubnetAvailabilityZone (\ s a -> s{_sSubnetAvailabilityZone = a})

instance FromJSON Subnet where
        parseJSON
          = withObject "Subnet"
              (\ x ->
                 Subnet' <$>
                   (x .:? "SubnetStatus") <*> (x .:? "SubnetIdentifier")
                     <*> (x .:? "SubnetAvailabilityZone"))

instance Hashable Subnet where

instance NFData Subnet where

-- | Provides information about types of supported endpoints in response to a request by the @DescribeEndpointTypes@ operation. This information includes the type of endpoint, the database engine name, and whether change data capture (CDC) is supported.
--
--
--
-- /See:/ 'supportedEndpointType' smart constructor.
data SupportedEndpointType =
  SupportedEndpointType'
    { _setEngineDisplayName :: !(Maybe Text)
    , _setEndpointType :: !(Maybe ReplicationEndpointTypeValue)
    , _setEngineName :: !(Maybe Text)
    , _setReplicationInstanceEngineMinimumVersion :: !(Maybe Text)
    , _setSupportsCDC :: !(Maybe Bool)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SupportedEndpointType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setEngineDisplayName' - The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
--
-- * 'setEndpointType' - The type of endpoint. Valid values are @source@ and @target@ .
--
-- * 'setEngineName' - The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , and @"sqlserver"@ .
--
-- * 'setReplicationInstanceEngineMinimumVersion' - The earliest AWS DMS engine version that supports this endpoint engine. Note that endpoint engines released with AWS DMS versions earlier than 3.1.1 do not return a value for this parameter.
--
-- * 'setSupportsCDC' - Indicates if Change Data Capture (CDC) is supported.
supportedEndpointType
    :: SupportedEndpointType
supportedEndpointType =
  SupportedEndpointType'
    { _setEngineDisplayName = Nothing
    , _setEndpointType = Nothing
    , _setEngineName = Nothing
    , _setReplicationInstanceEngineMinimumVersion = Nothing
    , _setSupportsCDC = Nothing
    }


-- | The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
setEngineDisplayName :: Lens' SupportedEndpointType (Maybe Text)
setEngineDisplayName = lens _setEngineDisplayName (\ s a -> s{_setEngineDisplayName = a})

-- | The type of endpoint. Valid values are @source@ and @target@ .
setEndpointType :: Lens' SupportedEndpointType (Maybe ReplicationEndpointTypeValue)
setEndpointType = lens _setEndpointType (\ s a -> s{_setEndpointType = a})

-- | The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , and @"sqlserver"@ .
setEngineName :: Lens' SupportedEndpointType (Maybe Text)
setEngineName = lens _setEngineName (\ s a -> s{_setEngineName = a})

-- | The earliest AWS DMS engine version that supports this endpoint engine. Note that endpoint engines released with AWS DMS versions earlier than 3.1.1 do not return a value for this parameter.
setReplicationInstanceEngineMinimumVersion :: Lens' SupportedEndpointType (Maybe Text)
setReplicationInstanceEngineMinimumVersion = lens _setReplicationInstanceEngineMinimumVersion (\ s a -> s{_setReplicationInstanceEngineMinimumVersion = a})

-- | Indicates if Change Data Capture (CDC) is supported.
setSupportsCDC :: Lens' SupportedEndpointType (Maybe Bool)
setSupportsCDC = lens _setSupportsCDC (\ s a -> s{_setSupportsCDC = a})

instance FromJSON SupportedEndpointType where
        parseJSON
          = withObject "SupportedEndpointType"
              (\ x ->
                 SupportedEndpointType' <$>
                   (x .:? "EngineDisplayName") <*>
                     (x .:? "EndpointType")
                     <*> (x .:? "EngineName")
                     <*> (x .:? "ReplicationInstanceEngineMinimumVersion")
                     <*> (x .:? "SupportsCDC"))

instance Hashable SupportedEndpointType where

instance NFData SupportedEndpointType where

-- | Provides a collection of table statistics in response to a request by the @DescribeTableStatistics@ operation.
--
--
--
-- /See:/ 'tableStatistics' smart constructor.
data TableStatistics =
  TableStatistics'
    { _tsValidationState              :: !(Maybe Text)
    , _tsFullLoadRows                 :: !(Maybe Integer)
    , _tsInserts                      :: !(Maybe Integer)
    , _tsFullLoadEndTime              :: !(Maybe POSIX)
    , _tsFullLoadCondtnlChkFailedRows :: !(Maybe Integer)
    , _tsFullLoadReloaded             :: !(Maybe Bool)
    , _tsValidationFailedRecords      :: !(Maybe Integer)
    , _tsValidationSuspendedRecords   :: !(Maybe Integer)
    , _tsSchemaName                   :: !(Maybe Text)
    , _tsValidationStateDetails       :: !(Maybe Text)
    , _tsTableState                   :: !(Maybe Text)
    , _tsFullLoadErrorRows            :: !(Maybe Integer)
    , _tsDdls                         :: !(Maybe Integer)
    , _tsDeletes                      :: !(Maybe Integer)
    , _tsUpdates                      :: !(Maybe Integer)
    , _tsValidationPendingRecords     :: !(Maybe Integer)
    , _tsFullLoadStartTime            :: !(Maybe POSIX)
    , _tsLastUpdateTime               :: !(Maybe POSIX)
    , _tsTableName                    :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsValidationState' - The validation state of the table. This parameter can have the following values:     * Not enabled - Validation isn't enabled for the table in the migration task.     * Pending records - Some records in the table are waiting for validation.     * Mismatched records - Some records in the table don't match between the source and target.     * Suspended records - Some records in the table couldn't be validated.     * No primary key - The table couldn't be validated because it has no primary key.     * Table error - The table wasn't validated because it's in an error state and some data wasn't migrated.     * Validated - All rows in the table are validated. If the table is updated, the status can change from Validated.     * Error - The table couldn't be validated because of an unexpected error.
--
-- * 'tsFullLoadRows' - The number of rows added during the full load operation.
--
-- * 'tsInserts' - The number of insert actions performed on a table.
--
-- * 'tsFullLoadEndTime' - The time when the full load operation completed.
--
-- * 'tsFullLoadCondtnlChkFailedRows' - The number of rows that failed conditional checks during the full load operation (valid only for migrations where DynamoDB is the target).
--
-- * 'tsFullLoadReloaded' - A value that indicates if the table was reloaded (@true@ ) or loaded as part of a new full load operation (@false@ ).
--
-- * 'tsValidationFailedRecords' - The number of records that failed validation.
--
-- * 'tsValidationSuspendedRecords' - The number of records that couldn't be validated.
--
-- * 'tsSchemaName' - The schema name.
--
-- * 'tsValidationStateDetails' - Additional details about the state of validation.
--
-- * 'tsTableState' - The state of the tables described. Valid states: Table does not exist | Before load | Full load | Table completed | Table cancelled | Table error | Table all | Table updates | Table is being reloaded
--
-- * 'tsFullLoadErrorRows' - The number of rows that failed to load during the full load operation (valid only for migrations where DynamoDB is the target).
--
-- * 'tsDdls' - The data definition language (DDL) used to build and modify the structure of your tables.
--
-- * 'tsDeletes' - The number of delete actions performed on a table.
--
-- * 'tsUpdates' - The number of update actions performed on a table.
--
-- * 'tsValidationPendingRecords' - The number of records that have yet to be validated.
--
-- * 'tsFullLoadStartTime' - The time when the full load operation started.
--
-- * 'tsLastUpdateTime' - The last time a table was updated.
--
-- * 'tsTableName' - The name of the table.
tableStatistics
    :: TableStatistics
tableStatistics =
  TableStatistics'
    { _tsValidationState = Nothing
    , _tsFullLoadRows = Nothing
    , _tsInserts = Nothing
    , _tsFullLoadEndTime = Nothing
    , _tsFullLoadCondtnlChkFailedRows = Nothing
    , _tsFullLoadReloaded = Nothing
    , _tsValidationFailedRecords = Nothing
    , _tsValidationSuspendedRecords = Nothing
    , _tsSchemaName = Nothing
    , _tsValidationStateDetails = Nothing
    , _tsTableState = Nothing
    , _tsFullLoadErrorRows = Nothing
    , _tsDdls = Nothing
    , _tsDeletes = Nothing
    , _tsUpdates = Nothing
    , _tsValidationPendingRecords = Nothing
    , _tsFullLoadStartTime = Nothing
    , _tsLastUpdateTime = Nothing
    , _tsTableName = Nothing
    }


-- | The validation state of the table. This parameter can have the following values:     * Not enabled - Validation isn't enabled for the table in the migration task.     * Pending records - Some records in the table are waiting for validation.     * Mismatched records - Some records in the table don't match between the source and target.     * Suspended records - Some records in the table couldn't be validated.     * No primary key - The table couldn't be validated because it has no primary key.     * Table error - The table wasn't validated because it's in an error state and some data wasn't migrated.     * Validated - All rows in the table are validated. If the table is updated, the status can change from Validated.     * Error - The table couldn't be validated because of an unexpected error.
tsValidationState :: Lens' TableStatistics (Maybe Text)
tsValidationState = lens _tsValidationState (\ s a -> s{_tsValidationState = a})

-- | The number of rows added during the full load operation.
tsFullLoadRows :: Lens' TableStatistics (Maybe Integer)
tsFullLoadRows = lens _tsFullLoadRows (\ s a -> s{_tsFullLoadRows = a})

-- | The number of insert actions performed on a table.
tsInserts :: Lens' TableStatistics (Maybe Integer)
tsInserts = lens _tsInserts (\ s a -> s{_tsInserts = a})

-- | The time when the full load operation completed.
tsFullLoadEndTime :: Lens' TableStatistics (Maybe UTCTime)
tsFullLoadEndTime = lens _tsFullLoadEndTime (\ s a -> s{_tsFullLoadEndTime = a}) . mapping _Time

-- | The number of rows that failed conditional checks during the full load operation (valid only for migrations where DynamoDB is the target).
tsFullLoadCondtnlChkFailedRows :: Lens' TableStatistics (Maybe Integer)
tsFullLoadCondtnlChkFailedRows = lens _tsFullLoadCondtnlChkFailedRows (\ s a -> s{_tsFullLoadCondtnlChkFailedRows = a})

-- | A value that indicates if the table was reloaded (@true@ ) or loaded as part of a new full load operation (@false@ ).
tsFullLoadReloaded :: Lens' TableStatistics (Maybe Bool)
tsFullLoadReloaded = lens _tsFullLoadReloaded (\ s a -> s{_tsFullLoadReloaded = a})

-- | The number of records that failed validation.
tsValidationFailedRecords :: Lens' TableStatistics (Maybe Integer)
tsValidationFailedRecords = lens _tsValidationFailedRecords (\ s a -> s{_tsValidationFailedRecords = a})

-- | The number of records that couldn't be validated.
tsValidationSuspendedRecords :: Lens' TableStatistics (Maybe Integer)
tsValidationSuspendedRecords = lens _tsValidationSuspendedRecords (\ s a -> s{_tsValidationSuspendedRecords = a})

-- | The schema name.
tsSchemaName :: Lens' TableStatistics (Maybe Text)
tsSchemaName = lens _tsSchemaName (\ s a -> s{_tsSchemaName = a})

-- | Additional details about the state of validation.
tsValidationStateDetails :: Lens' TableStatistics (Maybe Text)
tsValidationStateDetails = lens _tsValidationStateDetails (\ s a -> s{_tsValidationStateDetails = a})

-- | The state of the tables described. Valid states: Table does not exist | Before load | Full load | Table completed | Table cancelled | Table error | Table all | Table updates | Table is being reloaded
tsTableState :: Lens' TableStatistics (Maybe Text)
tsTableState = lens _tsTableState (\ s a -> s{_tsTableState = a})

-- | The number of rows that failed to load during the full load operation (valid only for migrations where DynamoDB is the target).
tsFullLoadErrorRows :: Lens' TableStatistics (Maybe Integer)
tsFullLoadErrorRows = lens _tsFullLoadErrorRows (\ s a -> s{_tsFullLoadErrorRows = a})

-- | The data definition language (DDL) used to build and modify the structure of your tables.
tsDdls :: Lens' TableStatistics (Maybe Integer)
tsDdls = lens _tsDdls (\ s a -> s{_tsDdls = a})

-- | The number of delete actions performed on a table.
tsDeletes :: Lens' TableStatistics (Maybe Integer)
tsDeletes = lens _tsDeletes (\ s a -> s{_tsDeletes = a})

-- | The number of update actions performed on a table.
tsUpdates :: Lens' TableStatistics (Maybe Integer)
tsUpdates = lens _tsUpdates (\ s a -> s{_tsUpdates = a})

-- | The number of records that have yet to be validated.
tsValidationPendingRecords :: Lens' TableStatistics (Maybe Integer)
tsValidationPendingRecords = lens _tsValidationPendingRecords (\ s a -> s{_tsValidationPendingRecords = a})

-- | The time when the full load operation started.
tsFullLoadStartTime :: Lens' TableStatistics (Maybe UTCTime)
tsFullLoadStartTime = lens _tsFullLoadStartTime (\ s a -> s{_tsFullLoadStartTime = a}) . mapping _Time

-- | The last time a table was updated.
tsLastUpdateTime :: Lens' TableStatistics (Maybe UTCTime)
tsLastUpdateTime = lens _tsLastUpdateTime (\ s a -> s{_tsLastUpdateTime = a}) . mapping _Time

-- | The name of the table.
tsTableName :: Lens' TableStatistics (Maybe Text)
tsTableName = lens _tsTableName (\ s a -> s{_tsTableName = a})

instance FromJSON TableStatistics where
        parseJSON
          = withObject "TableStatistics"
              (\ x ->
                 TableStatistics' <$>
                   (x .:? "ValidationState") <*> (x .:? "FullLoadRows")
                     <*> (x .:? "Inserts")
                     <*> (x .:? "FullLoadEndTime")
                     <*> (x .:? "FullLoadCondtnlChkFailedRows")
                     <*> (x .:? "FullLoadReloaded")
                     <*> (x .:? "ValidationFailedRecords")
                     <*> (x .:? "ValidationSuspendedRecords")
                     <*> (x .:? "SchemaName")
                     <*> (x .:? "ValidationStateDetails")
                     <*> (x .:? "TableState")
                     <*> (x .:? "FullLoadErrorRows")
                     <*> (x .:? "Ddls")
                     <*> (x .:? "Deletes")
                     <*> (x .:? "Updates")
                     <*> (x .:? "ValidationPendingRecords")
                     <*> (x .:? "FullLoadStartTime")
                     <*> (x .:? "LastUpdateTime")
                     <*> (x .:? "TableName"))

instance Hashable TableStatistics where

instance NFData TableStatistics where

-- | Provides the name of the schema and table to be reloaded.
--
--
--
-- /See:/ 'tableToReload' smart constructor.
data TableToReload =
  TableToReload'
    { _ttrSchemaName :: !(Maybe Text)
    , _ttrTableName  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableToReload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttrSchemaName' - The schema name of the table to be reloaded.
--
-- * 'ttrTableName' - The table name of the table to be reloaded.
tableToReload
    :: TableToReload
tableToReload =
  TableToReload' {_ttrSchemaName = Nothing, _ttrTableName = Nothing}


-- | The schema name of the table to be reloaded.
ttrSchemaName :: Lens' TableToReload (Maybe Text)
ttrSchemaName = lens _ttrSchemaName (\ s a -> s{_ttrSchemaName = a})

-- | The table name of the table to be reloaded.
ttrTableName :: Lens' TableToReload (Maybe Text)
ttrTableName = lens _ttrTableName (\ s a -> s{_ttrTableName = a})

instance Hashable TableToReload where

instance NFData TableToReload where

instance ToJSON TableToReload where
        toJSON TableToReload'{..}
          = object
              (catMaybes
                 [("SchemaName" .=) <$> _ttrSchemaName,
                  ("TableName" .=) <$> _ttrTableName])

-- | A user-defined key-value pair that describes metadata added to an AWS DMS resource and that is used by operations such as the following:
--
--
--     * @AddTagsToResource@
--
--     * @ListTagsForResource@
--
--     * @RemoveTagsFromResource@
--
--
--
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tagValue :: !(Maybe Text)
    , _tagKey   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagValue' - A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
--
-- * 'tagKey' - A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
tag
    :: Tag
tag = Tag' {_tagValue = Nothing, _tagKey = Nothing}


-- | A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\ s a -> s{_tagValue = a})

-- | A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ x -> Tag' <$> (x .:? "Value") <*> (x .:? "Key"))

instance Hashable Tag where

instance NFData Tag where

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("Value" .=) <$> _tagValue, ("Key" .=) <$> _tagKey])

-- | Describes status of a security group associated with the virtual private cloud hosting your replication and DB instances.
--
--
--
-- /See:/ 'vpcSecurityGroupMembership' smart constructor.
data VPCSecurityGroupMembership =
  VPCSecurityGroupMembership'
    { _vsgmStatus             :: !(Maybe Text)
    , _vsgmVPCSecurityGroupId :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPCSecurityGroupMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsgmStatus' - The status of the VPC security group.
--
-- * 'vsgmVPCSecurityGroupId' - The VPC security group Id.
vpcSecurityGroupMembership
    :: VPCSecurityGroupMembership
vpcSecurityGroupMembership =
  VPCSecurityGroupMembership'
    {_vsgmStatus = Nothing, _vsgmVPCSecurityGroupId = Nothing}


-- | The status of the VPC security group.
vsgmStatus :: Lens' VPCSecurityGroupMembership (Maybe Text)
vsgmStatus = lens _vsgmStatus (\ s a -> s{_vsgmStatus = a})

-- | The VPC security group Id.
vsgmVPCSecurityGroupId :: Lens' VPCSecurityGroupMembership (Maybe Text)
vsgmVPCSecurityGroupId = lens _vsgmVPCSecurityGroupId (\ s a -> s{_vsgmVPCSecurityGroupId = a})

instance FromJSON VPCSecurityGroupMembership where
        parseJSON
          = withObject "VPCSecurityGroupMembership"
              (\ x ->
                 VPCSecurityGroupMembership' <$>
                   (x .:? "Status") <*> (x .:? "VpcSecurityGroupId"))

instance Hashable VPCSecurityGroupMembership where

instance NFData VPCSecurityGroupMembership where
