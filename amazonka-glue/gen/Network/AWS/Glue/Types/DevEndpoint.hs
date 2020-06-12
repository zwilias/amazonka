{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DevEndpoint
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.DevEndpoint where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A development endpoint where a developer can remotely debug ETL scripts.
--
--
--
-- /See:/ 'devEndpoint' smart constructor.
data DevEndpoint = DevEndpoint'{_deStatus ::
                                !(Maybe Text),
                                _deFailureReason :: !(Maybe Text),
                                _deEndpointName :: !(Maybe Text),
                                _deExtraPythonLibsS3Path :: !(Maybe Text),
                                _deLastUpdateStatus :: !(Maybe Text),
                                _deSecurityGroupIds :: !(Maybe [Text]),
                                _deLastModifiedTimestamp :: !(Maybe POSIX),
                                _deVPCId :: !(Maybe Text),
                                _dePrivateAddress :: !(Maybe Text),
                                _dePublicKey :: !(Maybe Text),
                                _deSubnetId :: !(Maybe Text),
                                _deNumberOfNodes :: !(Maybe Int),
                                _dePublicAddress :: !(Maybe Text),
                                _deAvailabilityZone :: !(Maybe Text),
                                _deZeppelinRemoteSparkInterpreterPort ::
                                !(Maybe Int),
                                _deExtraJARsS3Path :: !(Maybe Text),
                                _deCreatedTimestamp :: !(Maybe POSIX),
                                _deYarnEndpointAddress :: !(Maybe Text),
                                _deRoleARN :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DevEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deStatus' - The current status of this DevEndpoint.
--
-- * 'deFailureReason' - The reason for a current failure in this DevEndpoint.
--
-- * 'deEndpointName' - The name of the DevEndpoint.
--
-- * 'deExtraPythonLibsS3Path' - Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma. Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <http://pandas.pydata.org/ pandas> Python data analysis library, are not yet supported.
--
-- * 'deLastUpdateStatus' - The status of the last update.
--
-- * 'deSecurityGroupIds' - A list of security group identifiers used in this DevEndpoint.
--
-- * 'deLastModifiedTimestamp' - The point in time at which this DevEndpoint was last modified.
--
-- * 'deVPCId' - The ID of the virtual private cloud (VPC) used by this DevEndpoint.
--
-- * 'dePrivateAddress' - The private address used by this DevEndpoint.
--
-- * 'dePublicKey' - The public key to be used by this DevEndpoint for authentication.
--
-- * 'deSubnetId' - The subnet ID for this DevEndpoint.
--
-- * 'deNumberOfNodes' - The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.
--
-- * 'dePublicAddress' - The public VPC address used by this DevEndpoint.
--
-- * 'deAvailabilityZone' - The AWS availability zone where this DevEndpoint is located.
--
-- * 'deZeppelinRemoteSparkInterpreterPort' - The Apache Zeppelin port for the remote Apache Spark interpreter.
--
-- * 'deExtraJARsS3Path' - Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint. Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.
--
-- * 'deCreatedTimestamp' - The point in time at which this DevEndpoint was created.
--
-- * 'deYarnEndpointAddress' - The YARN endpoint address used by this DevEndpoint.
--
-- * 'deRoleARN' - The AWS ARN of the IAM role used in this DevEndpoint.
devEndpoint
    :: DevEndpoint
devEndpoint
  = DevEndpoint'{_deStatus = Nothing,
                 _deFailureReason = Nothing,
                 _deEndpointName = Nothing,
                 _deExtraPythonLibsS3Path = Nothing,
                 _deLastUpdateStatus = Nothing,
                 _deSecurityGroupIds = Nothing,
                 _deLastModifiedTimestamp = Nothing,
                 _deVPCId = Nothing, _dePrivateAddress = Nothing,
                 _dePublicKey = Nothing, _deSubnetId = Nothing,
                 _deNumberOfNodes = Nothing,
                 _dePublicAddress = Nothing,
                 _deAvailabilityZone = Nothing,
                 _deZeppelinRemoteSparkInterpreterPort = Nothing,
                 _deExtraJARsS3Path = Nothing,
                 _deCreatedTimestamp = Nothing,
                 _deYarnEndpointAddress = Nothing,
                 _deRoleARN = Nothing}

-- | The current status of this DevEndpoint.
deStatus :: Lens' DevEndpoint (Maybe Text)
deStatus = lens _deStatus (\ s a -> s{_deStatus = a})

-- | The reason for a current failure in this DevEndpoint.
deFailureReason :: Lens' DevEndpoint (Maybe Text)
deFailureReason = lens _deFailureReason (\ s a -> s{_deFailureReason = a})

-- | The name of the DevEndpoint.
deEndpointName :: Lens' DevEndpoint (Maybe Text)
deEndpointName = lens _deEndpointName (\ s a -> s{_deEndpointName = a})

-- | Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma. Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <http://pandas.pydata.org/ pandas> Python data analysis library, are not yet supported.
deExtraPythonLibsS3Path :: Lens' DevEndpoint (Maybe Text)
deExtraPythonLibsS3Path = lens _deExtraPythonLibsS3Path (\ s a -> s{_deExtraPythonLibsS3Path = a})

-- | The status of the last update.
deLastUpdateStatus :: Lens' DevEndpoint (Maybe Text)
deLastUpdateStatus = lens _deLastUpdateStatus (\ s a -> s{_deLastUpdateStatus = a})

-- | A list of security group identifiers used in this DevEndpoint.
deSecurityGroupIds :: Lens' DevEndpoint [Text]
deSecurityGroupIds = lens _deSecurityGroupIds (\ s a -> s{_deSecurityGroupIds = a}) . _Default . _Coerce

-- | The point in time at which this DevEndpoint was last modified.
deLastModifiedTimestamp :: Lens' DevEndpoint (Maybe UTCTime)
deLastModifiedTimestamp = lens _deLastModifiedTimestamp (\ s a -> s{_deLastModifiedTimestamp = a}) . mapping _Time

-- | The ID of the virtual private cloud (VPC) used by this DevEndpoint.
deVPCId :: Lens' DevEndpoint (Maybe Text)
deVPCId = lens _deVPCId (\ s a -> s{_deVPCId = a})

-- | The private address used by this DevEndpoint.
dePrivateAddress :: Lens' DevEndpoint (Maybe Text)
dePrivateAddress = lens _dePrivateAddress (\ s a -> s{_dePrivateAddress = a})

-- | The public key to be used by this DevEndpoint for authentication.
dePublicKey :: Lens' DevEndpoint (Maybe Text)
dePublicKey = lens _dePublicKey (\ s a -> s{_dePublicKey = a})

-- | The subnet ID for this DevEndpoint.
deSubnetId :: Lens' DevEndpoint (Maybe Text)
deSubnetId = lens _deSubnetId (\ s a -> s{_deSubnetId = a})

-- | The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.
deNumberOfNodes :: Lens' DevEndpoint (Maybe Int)
deNumberOfNodes = lens _deNumberOfNodes (\ s a -> s{_deNumberOfNodes = a})

-- | The public VPC address used by this DevEndpoint.
dePublicAddress :: Lens' DevEndpoint (Maybe Text)
dePublicAddress = lens _dePublicAddress (\ s a -> s{_dePublicAddress = a})

-- | The AWS availability zone where this DevEndpoint is located.
deAvailabilityZone :: Lens' DevEndpoint (Maybe Text)
deAvailabilityZone = lens _deAvailabilityZone (\ s a -> s{_deAvailabilityZone = a})

-- | The Apache Zeppelin port for the remote Apache Spark interpreter.
deZeppelinRemoteSparkInterpreterPort :: Lens' DevEndpoint (Maybe Int)
deZeppelinRemoteSparkInterpreterPort = lens _deZeppelinRemoteSparkInterpreterPort (\ s a -> s{_deZeppelinRemoteSparkInterpreterPort = a})

-- | Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint. Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.
deExtraJARsS3Path :: Lens' DevEndpoint (Maybe Text)
deExtraJARsS3Path = lens _deExtraJARsS3Path (\ s a -> s{_deExtraJARsS3Path = a})

-- | The point in time at which this DevEndpoint was created.
deCreatedTimestamp :: Lens' DevEndpoint (Maybe UTCTime)
deCreatedTimestamp = lens _deCreatedTimestamp (\ s a -> s{_deCreatedTimestamp = a}) . mapping _Time

-- | The YARN endpoint address used by this DevEndpoint.
deYarnEndpointAddress :: Lens' DevEndpoint (Maybe Text)
deYarnEndpointAddress = lens _deYarnEndpointAddress (\ s a -> s{_deYarnEndpointAddress = a})

-- | The AWS ARN of the IAM role used in this DevEndpoint.
deRoleARN :: Lens' DevEndpoint (Maybe Text)
deRoleARN = lens _deRoleARN (\ s a -> s{_deRoleARN = a})

instance FromJSON DevEndpoint where
        parseJSON
          = withObject "DevEndpoint"
              (\ x ->
                 DevEndpoint' <$>
                   (x .:? "Status") <*> (x .:? "FailureReason") <*>
                     (x .:? "EndpointName")
                     <*> (x .:? "ExtraPythonLibsS3Path")
                     <*> (x .:? "LastUpdateStatus")
                     <*> (x .:? "SecurityGroupIds" .!= mempty)
                     <*> (x .:? "LastModifiedTimestamp")
                     <*> (x .:? "VpcId")
                     <*> (x .:? "PrivateAddress")
                     <*> (x .:? "PublicKey")
                     <*> (x .:? "SubnetId")
                     <*> (x .:? "NumberOfNodes")
                     <*> (x .:? "PublicAddress")
                     <*> (x .:? "AvailabilityZone")
                     <*> (x .:? "ZeppelinRemoteSparkInterpreterPort")
                     <*> (x .:? "ExtraJarsS3Path")
                     <*> (x .:? "CreatedTimestamp")
                     <*> (x .:? "YarnEndpointAddress")
                     <*> (x .:? "RoleArn"))

instance Hashable DevEndpoint where

instance NFData DevEndpoint where
