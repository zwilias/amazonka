{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Cluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Cluster where

import Network.AWS.EKS.Types.Certificate
import Network.AWS.EKS.Types.ClusterStatus
import Network.AWS.EKS.Types.EncryptionConfig
import Network.AWS.EKS.Types.Identity
import Network.AWS.EKS.Types.Logging
import Network.AWS.EKS.Types.VPCConfigResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon EKS cluster.
--
--
--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster'{_cStatus ::
                        !(Maybe ClusterStatus),
                        _cArn :: !(Maybe Text),
                        _cCreatedAt :: !(Maybe POSIX),
                        _cPlatformVersion :: !(Maybe Text),
                        _cCertificateAuthority :: !(Maybe Certificate),
                        _cName :: !(Maybe Text), _cVersion :: !(Maybe Text),
                        _cEncryptionConfig :: !(Maybe [EncryptionConfig]),
                        _cEndpoint :: !(Maybe Text),
                        _cClientRequestToken :: !(Maybe Text),
                        _cLogging :: !(Maybe Logging),
                        _cIdentity :: !(Maybe Identity),
                        _cResourcesVPCConfig :: !(Maybe VPCConfigResponse),
                        _cTags :: !(Maybe (Map Text Text)),
                        _cRoleARN :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus' - The current status of the cluster.
--
-- * 'cArn' - The Amazon Resource Name (ARN) of the cluster.
--
-- * 'cCreatedAt' - The Unix epoch timestamp in seconds for when the cluster was created.
--
-- * 'cPlatformVersion' - The platform version of your Amazon EKS cluster. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'cCertificateAuthority' - The @certificate-authority-data@ for your cluster.
--
-- * 'cName' - The name of the cluster.
--
-- * 'cVersion' - The Kubernetes server version for the cluster.
--
-- * 'cEncryptionConfig' - The encryption configuration for the cluster.
--
-- * 'cEndpoint' - The endpoint for your Kubernetes API server.
--
-- * 'cClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cLogging' - The logging configuration for your cluster.
--
-- * 'cIdentity' - The identity provider information for the cluster.
--
-- * 'cResourcesVPCConfig' - The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations> and <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations> in the /Amazon EKS User Guide/ .
--
-- * 'cTags' - The metadata that you apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Cluster tags do not propagate to any other resources associated with the cluster. 
--
-- * 'cRoleARN' - The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
cluster
    :: Cluster
cluster
  = Cluster'{_cStatus = Nothing, _cArn = Nothing,
             _cCreatedAt = Nothing, _cPlatformVersion = Nothing,
             _cCertificateAuthority = Nothing, _cName = Nothing,
             _cVersion = Nothing, _cEncryptionConfig = Nothing,
             _cEndpoint = Nothing, _cClientRequestToken = Nothing,
             _cLogging = Nothing, _cIdentity = Nothing,
             _cResourcesVPCConfig = Nothing, _cTags = Nothing,
             _cRoleARN = Nothing}

-- | The current status of the cluster.
cStatus :: Lens' Cluster (Maybe ClusterStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The Amazon Resource Name (ARN) of the cluster.
cArn :: Lens' Cluster (Maybe Text)
cArn = lens _cArn (\ s a -> s{_cArn = a})

-- | The Unix epoch timestamp in seconds for when the cluster was created.
cCreatedAt :: Lens' Cluster (Maybe UTCTime)
cCreatedAt = lens _cCreatedAt (\ s a -> s{_cCreatedAt = a}) . mapping _Time

-- | The platform version of your Amazon EKS cluster. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions> in the /\/Amazon EKS User Guide\/ / .
cPlatformVersion :: Lens' Cluster (Maybe Text)
cPlatformVersion = lens _cPlatformVersion (\ s a -> s{_cPlatformVersion = a})

-- | The @certificate-authority-data@ for your cluster.
cCertificateAuthority :: Lens' Cluster (Maybe Certificate)
cCertificateAuthority = lens _cCertificateAuthority (\ s a -> s{_cCertificateAuthority = a})

-- | The name of the cluster.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The Kubernetes server version for the cluster.
cVersion :: Lens' Cluster (Maybe Text)
cVersion = lens _cVersion (\ s a -> s{_cVersion = a})

-- | The encryption configuration for the cluster.
cEncryptionConfig :: Lens' Cluster [EncryptionConfig]
cEncryptionConfig = lens _cEncryptionConfig (\ s a -> s{_cEncryptionConfig = a}) . _Default . _Coerce

-- | The endpoint for your Kubernetes API server.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cClientRequestToken :: Lens' Cluster (Maybe Text)
cClientRequestToken = lens _cClientRequestToken (\ s a -> s{_cClientRequestToken = a})

-- | The logging configuration for your cluster.
cLogging :: Lens' Cluster (Maybe Logging)
cLogging = lens _cLogging (\ s a -> s{_cLogging = a})

-- | The identity provider information for the cluster.
cIdentity :: Lens' Cluster (Maybe Identity)
cIdentity = lens _cIdentity (\ s a -> s{_cIdentity = a})

-- | The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations> and <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations> in the /Amazon EKS User Guide/ .
cResourcesVPCConfig :: Lens' Cluster (Maybe VPCConfigResponse)
cResourcesVPCConfig = lens _cResourcesVPCConfig (\ s a -> s{_cResourcesVPCConfig = a})

-- | The metadata that you apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Cluster tags do not propagate to any other resources associated with the cluster. 
cTags :: Lens' Cluster (HashMap Text Text)
cTags = lens _cTags (\ s a -> s{_cTags = a}) . _Default . _Map

-- | The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
cRoleARN :: Lens' Cluster (Maybe Text)
cRoleARN = lens _cRoleARN (\ s a -> s{_cRoleARN = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ x ->
                 Cluster' <$>
                   (x .:? "status") <*> (x .:? "arn") <*>
                     (x .:? "createdAt")
                     <*> (x .:? "platformVersion")
                     <*> (x .:? "certificateAuthority")
                     <*> (x .:? "name")
                     <*> (x .:? "version")
                     <*> (x .:? "encryptionConfig" .!= mempty)
                     <*> (x .:? "endpoint")
                     <*> (x .:? "clientRequestToken")
                     <*> (x .:? "logging")
                     <*> (x .:? "identity")
                     <*> (x .:? "resourcesVpcConfig")
                     <*> (x .:? "tags" .!= mempty)
                     <*> (x .:? "roleArn"))

instance Hashable Cluster where

instance NFData Cluster where
