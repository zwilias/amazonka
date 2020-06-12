{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.S3DestinationDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Firehose.Types.S3DestinationDescription where

import Network.AWS.Firehose.Types.BufferingHints
import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CompressionFormat
import Network.AWS.Firehose.Types.EncryptionConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a destination in Amazon S3.
--
--
--
-- /See:/ 's3DestinationDescription' smart constructor.
data S3DestinationDescription = S3DestinationDescription'{_s3Prefix
                                                          :: !(Maybe Text),
                                                          _s3CloudWatchLoggingOptions
                                                          ::
                                                          !(Maybe
                                                              CloudWatchLoggingOptions),
                                                          _s3RoleARN :: !Text,
                                                          _s3BucketARN :: !Text,
                                                          _s3BufferingHints ::
                                                          !BufferingHints,
                                                          _s3CompressionFormat
                                                          :: !CompressionFormat,
                                                          _s3EncryptionConfiguration
                                                          ::
                                                          !EncryptionConfiguration}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'S3DestinationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 's3Prefix' - The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name Amazon S3 Object Name Format> in the /Amazon Kinesis Data Firehose Developer Guide/ .
--
-- * 's3CloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 's3RoleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 's3BucketARN' - The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 's3BufferingHints' - The buffering option. If no value is specified, @BufferingHints@ object default values are used.
--
-- * 's3CompressionFormat' - The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
--
-- * 's3EncryptionConfiguration' - The encryption configuration. If no value is specified, the default is no encryption.
s3DestinationDescription
    :: Text -- ^ 's3RoleARN'
    -> Text -- ^ 's3BucketARN'
    -> BufferingHints -- ^ 's3BufferingHints'
    -> CompressionFormat -- ^ 's3CompressionFormat'
    -> EncryptionConfiguration -- ^ 's3EncryptionConfiguration'
    -> S3DestinationDescription
s3DestinationDescription pRoleARN_ pBucketARN_
  pBufferingHints_ pCompressionFormat_
  pEncryptionConfiguration_
  = S3DestinationDescription'{_s3Prefix = Nothing,
                              _s3CloudWatchLoggingOptions = Nothing,
                              _s3RoleARN = pRoleARN_,
                              _s3BucketARN = pBucketARN_,
                              _s3BufferingHints = pBufferingHints_,
                              _s3CompressionFormat = pCompressionFormat_,
                              _s3EncryptionConfiguration =
                                pEncryptionConfiguration_}

-- | The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name Amazon S3 Object Name Format> in the /Amazon Kinesis Data Firehose Developer Guide/ .
s3Prefix :: Lens' S3DestinationDescription (Maybe Text)
s3Prefix = lens _s3Prefix (\ s a -> s{_s3Prefix = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
s3CloudWatchLoggingOptions :: Lens' S3DestinationDescription (Maybe CloudWatchLoggingOptions)
s3CloudWatchLoggingOptions = lens _s3CloudWatchLoggingOptions (\ s a -> s{_s3CloudWatchLoggingOptions = a})

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
s3RoleARN :: Lens' S3DestinationDescription Text
s3RoleARN = lens _s3RoleARN (\ s a -> s{_s3RoleARN = a})

-- | The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
s3BucketARN :: Lens' S3DestinationDescription Text
s3BucketARN = lens _s3BucketARN (\ s a -> s{_s3BucketARN = a})

-- | The buffering option. If no value is specified, @BufferingHints@ object default values are used.
s3BufferingHints :: Lens' S3DestinationDescription BufferingHints
s3BufferingHints = lens _s3BufferingHints (\ s a -> s{_s3BufferingHints = a})

-- | The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
s3CompressionFormat :: Lens' S3DestinationDescription CompressionFormat
s3CompressionFormat = lens _s3CompressionFormat (\ s a -> s{_s3CompressionFormat = a})

-- | The encryption configuration. If no value is specified, the default is no encryption.
s3EncryptionConfiguration :: Lens' S3DestinationDescription EncryptionConfiguration
s3EncryptionConfiguration = lens _s3EncryptionConfiguration (\ s a -> s{_s3EncryptionConfiguration = a})

instance FromJSON S3DestinationDescription where
        parseJSON
          = withObject "S3DestinationDescription"
              (\ x ->
                 S3DestinationDescription' <$>
                   (x .:? "Prefix") <*>
                     (x .:? "CloudWatchLoggingOptions")
                     <*> (x .: "RoleARN")
                     <*> (x .: "BucketARN")
                     <*> (x .: "BufferingHints")
                     <*> (x .: "CompressionFormat")
                     <*> (x .: "EncryptionConfiguration"))

instance Hashable S3DestinationDescription where

instance NFData S3DestinationDescription where
