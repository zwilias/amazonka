{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.NodegroupScalingConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.NodegroupScalingConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the scaling configuration details for the Auto Scaling group that is associated with your node group.
--
--
--
-- /See:/ 'nodegroupScalingConfig' smart constructor.
data NodegroupScalingConfig = NodegroupScalingConfig'{_nscDesiredSize
                                                      :: !(Maybe Nat),
                                                      _nscMaxSize ::
                                                      !(Maybe Nat),
                                                      _nscMinSize ::
                                                      !(Maybe Nat)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'NodegroupScalingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nscDesiredSize' - The current number of worker nodes that the managed node group should maintain.
--
-- * 'nscMaxSize' - The maximum number of worker nodes that the managed node group can scale out to. Managed node groups can support up to 100 nodes by default.
--
-- * 'nscMinSize' - The minimum number of worker nodes that the managed node group can scale in to. This number must be greater than zero.
nodegroupScalingConfig
    :: NodegroupScalingConfig
nodegroupScalingConfig
  = NodegroupScalingConfig'{_nscDesiredSize = Nothing,
                            _nscMaxSize = Nothing, _nscMinSize = Nothing}

-- | The current number of worker nodes that the managed node group should maintain.
nscDesiredSize :: Lens' NodegroupScalingConfig (Maybe Natural)
nscDesiredSize = lens _nscDesiredSize (\ s a -> s{_nscDesiredSize = a}) . mapping _Nat

-- | The maximum number of worker nodes that the managed node group can scale out to. Managed node groups can support up to 100 nodes by default.
nscMaxSize :: Lens' NodegroupScalingConfig (Maybe Natural)
nscMaxSize = lens _nscMaxSize (\ s a -> s{_nscMaxSize = a}) . mapping _Nat

-- | The minimum number of worker nodes that the managed node group can scale in to. This number must be greater than zero.
nscMinSize :: Lens' NodegroupScalingConfig (Maybe Natural)
nscMinSize = lens _nscMinSize (\ s a -> s{_nscMinSize = a}) . mapping _Nat

instance FromJSON NodegroupScalingConfig where
        parseJSON
          = withObject "NodegroupScalingConfig"
              (\ x ->
                 NodegroupScalingConfig' <$>
                   (x .:? "desiredSize") <*> (x .:? "maxSize") <*>
                     (x .:? "minSize"))

instance Hashable NodegroupScalingConfig where

instance NFData NodegroupScalingConfig where

instance ToJSON NodegroupScalingConfig where
        toJSON NodegroupScalingConfig'{..}
          = object
              (catMaybes
                 [("desiredSize" .=) <$> _nscDesiredSize,
                  ("maxSize" .=) <$> _nscMaxSize,
                  ("minSize" .=) <$> _nscMinSize])
