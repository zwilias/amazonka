{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.UpdateLabelsPayload
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.UpdateLabelsPayload where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a Kubernetes label change for a managed node group.
--
--
--
-- /See:/ 'updateLabelsPayload' smart constructor.
data UpdateLabelsPayload = UpdateLabelsPayload'{_ulpRemoveLabels
                                                :: !(Maybe [Text]),
                                                _ulpAddOrUpdateLabels ::
                                                !(Maybe (Map Text Text))}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateLabelsPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpRemoveLabels' - Kubernetes labels to be removed.
--
-- * 'ulpAddOrUpdateLabels' - Kubernetes labels to be added or updated.
updateLabelsPayload
    :: UpdateLabelsPayload
updateLabelsPayload
  = UpdateLabelsPayload'{_ulpRemoveLabels = Nothing,
                         _ulpAddOrUpdateLabels = Nothing}

-- | Kubernetes labels to be removed.
ulpRemoveLabels :: Lens' UpdateLabelsPayload [Text]
ulpRemoveLabels = lens _ulpRemoveLabels (\ s a -> s{_ulpRemoveLabels = a}) . _Default . _Coerce

-- | Kubernetes labels to be added or updated.
ulpAddOrUpdateLabels :: Lens' UpdateLabelsPayload (HashMap Text Text)
ulpAddOrUpdateLabels = lens _ulpAddOrUpdateLabels (\ s a -> s{_ulpAddOrUpdateLabels = a}) . _Default . _Map

instance Hashable UpdateLabelsPayload where

instance NFData UpdateLabelsPayload where

instance ToJSON UpdateLabelsPayload where
        toJSON UpdateLabelsPayload'{..}
          = object
              (catMaybes
                 [("removeLabels" .=) <$> _ulpRemoveLabels,
                  ("addOrUpdateLabels" .=) <$> _ulpAddOrUpdateLabels])
