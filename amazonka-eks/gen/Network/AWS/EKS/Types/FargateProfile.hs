{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.FargateProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.FargateProfile where

import Network.AWS.EKS.Types.FargateProfileSelector
import Network.AWS.EKS.Types.FargateProfileStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Fargate profile.
--
--
--
-- /See:/ 'fargateProfile' smart constructor.
data FargateProfile = FargateProfile'{_fpFargateProfileARN
                                      :: !(Maybe Text),
                                      _fpStatus ::
                                      !(Maybe FargateProfileStatus),
                                      _fpCreatedAt :: !(Maybe POSIX),
                                      _fpSubnets :: !(Maybe [Text]),
                                      _fpClusterName :: !(Maybe Text),
                                      _fpPodExecutionRoleARN :: !(Maybe Text),
                                      _fpFargateProfileName :: !(Maybe Text),
                                      _fpSelectors ::
                                      !(Maybe [FargateProfileSelector]),
                                      _fpTags :: !(Maybe (Map Text Text))}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FargateProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpFargateProfileARN' - The full Amazon Resource Name (ARN) of the Fargate profile.
--
-- * 'fpStatus' - The current status of the Fargate profile.
--
-- * 'fpCreatedAt' - The Unix epoch timestamp in seconds for when the Fargate profile was created.
--
-- * 'fpSubnets' - The IDs of subnets to launch pods into.
--
-- * 'fpClusterName' - The name of the Amazon EKS cluster that the Fargate profile belongs to.
--
-- * 'fpPodExecutionRoleARN' - The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html Pod Execution Role> in the /Amazon EKS User Guide/ .
--
-- * 'fpFargateProfileName' - The name of the Fargate profile.
--
-- * 'fpSelectors' - The selectors to match for pods to use this Fargate profile.
--
-- * 'fpTags' - The metadata applied to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.
fargateProfile
    :: FargateProfile
fargateProfile
  = FargateProfile'{_fpFargateProfileARN = Nothing,
                    _fpStatus = Nothing, _fpCreatedAt = Nothing,
                    _fpSubnets = Nothing, _fpClusterName = Nothing,
                    _fpPodExecutionRoleARN = Nothing,
                    _fpFargateProfileName = Nothing,
                    _fpSelectors = Nothing, _fpTags = Nothing}

-- | The full Amazon Resource Name (ARN) of the Fargate profile.
fpFargateProfileARN :: Lens' FargateProfile (Maybe Text)
fpFargateProfileARN = lens _fpFargateProfileARN (\ s a -> s{_fpFargateProfileARN = a})

-- | The current status of the Fargate profile.
fpStatus :: Lens' FargateProfile (Maybe FargateProfileStatus)
fpStatus = lens _fpStatus (\ s a -> s{_fpStatus = a})

-- | The Unix epoch timestamp in seconds for when the Fargate profile was created.
fpCreatedAt :: Lens' FargateProfile (Maybe UTCTime)
fpCreatedAt = lens _fpCreatedAt (\ s a -> s{_fpCreatedAt = a}) . mapping _Time

-- | The IDs of subnets to launch pods into.
fpSubnets :: Lens' FargateProfile [Text]
fpSubnets = lens _fpSubnets (\ s a -> s{_fpSubnets = a}) . _Default . _Coerce

-- | The name of the Amazon EKS cluster that the Fargate profile belongs to.
fpClusterName :: Lens' FargateProfile (Maybe Text)
fpClusterName = lens _fpClusterName (\ s a -> s{_fpClusterName = a})

-- | The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html Pod Execution Role> in the /Amazon EKS User Guide/ .
fpPodExecutionRoleARN :: Lens' FargateProfile (Maybe Text)
fpPodExecutionRoleARN = lens _fpPodExecutionRoleARN (\ s a -> s{_fpPodExecutionRoleARN = a})

-- | The name of the Fargate profile.
fpFargateProfileName :: Lens' FargateProfile (Maybe Text)
fpFargateProfileName = lens _fpFargateProfileName (\ s a -> s{_fpFargateProfileName = a})

-- | The selectors to match for pods to use this Fargate profile.
fpSelectors :: Lens' FargateProfile [FargateProfileSelector]
fpSelectors = lens _fpSelectors (\ s a -> s{_fpSelectors = a}) . _Default . _Coerce

-- | The metadata applied to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.
fpTags :: Lens' FargateProfile (HashMap Text Text)
fpTags = lens _fpTags (\ s a -> s{_fpTags = a}) . _Default . _Map

instance FromJSON FargateProfile where
        parseJSON
          = withObject "FargateProfile"
              (\ x ->
                 FargateProfile' <$>
                   (x .:? "fargateProfileArn") <*> (x .:? "status") <*>
                     (x .:? "createdAt")
                     <*> (x .:? "subnets" .!= mempty)
                     <*> (x .:? "clusterName")
                     <*> (x .:? "podExecutionRoleArn")
                     <*> (x .:? "fargateProfileName")
                     <*> (x .:? "selectors" .!= mempty)
                     <*> (x .:? "tags" .!= mempty))

instance Hashable FargateProfile where

instance NFData FargateProfile where
