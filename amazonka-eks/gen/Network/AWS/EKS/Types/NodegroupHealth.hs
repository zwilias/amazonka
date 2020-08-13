{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.NodegroupHealth
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.NodegroupHealth where

import Network.AWS.EKS.Types.Issue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the health status of the node group.
--
--
--
-- /See:/ 'nodegroupHealth' smart constructor.
newtype NodegroupHealth = NodegroupHealth'{_nhIssues
                                           :: Maybe [Issue]}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodegroupHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nhIssues' - Any issues that are associated with the node group. 
nodegroupHealth
    :: NodegroupHealth
nodegroupHealth
  = NodegroupHealth'{_nhIssues = Nothing}

-- | Any issues that are associated with the node group. 
nhIssues :: Lens' NodegroupHealth [Issue]
nhIssues = lens _nhIssues (\ s a -> s{_nhIssues = a}) . _Default . _Coerce

instance FromJSON NodegroupHealth where
        parseJSON
          = withObject "NodegroupHealth"
              (\ x ->
                 NodegroupHealth' <$> (x .:? "issues" .!= mempty))

instance Hashable NodegroupHealth where

instance NFData NodegroupHealth where
