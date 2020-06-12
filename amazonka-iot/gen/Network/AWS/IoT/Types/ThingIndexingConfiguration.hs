{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ThingIndexingConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.ThingIndexingConfiguration where

import Network.AWS.IoT.Types.ThingIndexingMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Thing indexing configuration.
--
--
--
-- /See:/ 'thingIndexingConfiguration' smart constructor.
newtype ThingIndexingConfiguration = ThingIndexingConfiguration'{_ticThingIndexingMode
                                                                 ::
                                                                 Maybe
                                                                   ThingIndexingMode}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'ThingIndexingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ticThingIndexingMode' - Thing indexing mode. Valid values are:      * REGISTRY – Your thing index will contain only registry data.     * REGISTRY_AND_SHADOW - Your thing index will contain registry and shadow data.     * OFF - Thing indexing is disabled.
thingIndexingConfiguration
    :: ThingIndexingConfiguration
thingIndexingConfiguration
  = ThingIndexingConfiguration'{_ticThingIndexingMode =
                                  Nothing}

-- | Thing indexing mode. Valid values are:      * REGISTRY – Your thing index will contain only registry data.     * REGISTRY_AND_SHADOW - Your thing index will contain registry and shadow data.     * OFF - Thing indexing is disabled.
ticThingIndexingMode :: Lens' ThingIndexingConfiguration (Maybe ThingIndexingMode)
ticThingIndexingMode = lens _ticThingIndexingMode (\ s a -> s{_ticThingIndexingMode = a})

instance FromJSON ThingIndexingConfiguration where
        parseJSON
          = withObject "ThingIndexingConfiguration"
              (\ x ->
                 ThingIndexingConfiguration' <$>
                   (x .:? "thingIndexingMode"))

instance Hashable ThingIndexingConfiguration where

instance NFData ThingIndexingConfiguration where

instance ToJSON ThingIndexingConfiguration where
        toJSON ThingIndexingConfiguration'{..}
          = object
              (catMaybes
                 [("thingIndexingMode" .=) <$> _ticThingIndexingMode])
