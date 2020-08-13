{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.RemoteAccessConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.RemoteAccessConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the remote access configuration for the managed node group.
--
--
--
-- /See:/ 'remoteAccessConfig' smart constructor.
data RemoteAccessConfig = RemoteAccessConfig'{_racSourceSecurityGroups
                                              :: !(Maybe [Text]),
                                              _racEc2SSHKey :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemoteAccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'racSourceSecurityGroups' - The security groups that are allowed SSH access (port 22) to the worker nodes. If you specify an Amazon EC2 SSH key but do not specify a source security group when you create a managed node group, then port 22 on the worker nodes is opened to the internet (0.0.0.0/0). For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- * 'racEc2SSHKey' - The Amazon EC2 SSH key that provides access for SSH communication with the worker nodes in the managed node group. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon Elastic Compute Cloud User Guide for Linux Instances/ .
remoteAccessConfig
    :: RemoteAccessConfig
remoteAccessConfig
  = RemoteAccessConfig'{_racSourceSecurityGroups =
                          Nothing,
                        _racEc2SSHKey = Nothing}

-- | The security groups that are allowed SSH access (port 22) to the worker nodes. If you specify an Amazon EC2 SSH key but do not specify a source security group when you create a managed node group, then port 22 on the worker nodes is opened to the internet (0.0.0.0/0). For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ .
racSourceSecurityGroups :: Lens' RemoteAccessConfig [Text]
racSourceSecurityGroups = lens _racSourceSecurityGroups (\ s a -> s{_racSourceSecurityGroups = a}) . _Default . _Coerce

-- | The Amazon EC2 SSH key that provides access for SSH communication with the worker nodes in the managed node group. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon Elastic Compute Cloud User Guide for Linux Instances/ .
racEc2SSHKey :: Lens' RemoteAccessConfig (Maybe Text)
racEc2SSHKey = lens _racEc2SSHKey (\ s a -> s{_racEc2SSHKey = a})

instance FromJSON RemoteAccessConfig where
        parseJSON
          = withObject "RemoteAccessConfig"
              (\ x ->
                 RemoteAccessConfig' <$>
                   (x .:? "sourceSecurityGroups" .!= mempty) <*>
                     (x .:? "ec2SshKey"))

instance Hashable RemoteAccessConfig where

instance NFData RemoteAccessConfig where

instance ToJSON RemoteAccessConfig where
        toJSON RemoteAccessConfig'{..}
          = object
              (catMaybes
                 [("sourceSecurityGroups" .=) <$>
                    _racSourceSecurityGroups,
                  ("ec2SshKey" .=) <$> _racEc2SSHKey])
