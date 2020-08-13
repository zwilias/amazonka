{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.AutoScalingGroup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.AutoScalingGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An Auto Scaling group that is associated with an Amazon EKS managed node group.
--
--
--
-- /See:/ 'autoScalingGroup' smart constructor.
newtype AutoScalingGroup = AutoScalingGroup'{_asgName
                                             :: Maybe Text}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoScalingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgName' - The name of the Auto Scaling group associated with an Amazon EKS managed node group.
autoScalingGroup
    :: AutoScalingGroup
autoScalingGroup
  = AutoScalingGroup'{_asgName = Nothing}

-- | The name of the Auto Scaling group associated with an Amazon EKS managed node group.
asgName :: Lens' AutoScalingGroup (Maybe Text)
asgName = lens _asgName (\ s a -> s{_asgName = a})

instance FromJSON AutoScalingGroup where
        parseJSON
          = withObject "AutoScalingGroup"
              (\ x -> AutoScalingGroup' <$> (x .:? "name"))

instance Hashable AutoScalingGroup where

instance NFData AutoScalingGroup where
