{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CORSConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CORSConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.CORSRule

-- | /See:/ 'corsConfiguration' smart constructor.
newtype CORSConfiguration = CORSConfiguration'{_ccCORSRules
                                               :: [CORSRule]}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CORSConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCORSRules' - Undocumented member.
corsConfiguration
    :: CORSConfiguration
corsConfiguration
  = CORSConfiguration'{_ccCORSRules = mempty}

-- | Undocumented member.
ccCORSRules :: Lens' CORSConfiguration [CORSRule]
ccCORSRules = lens _ccCORSRules (\ s a -> s{_ccCORSRules = a}) . _Coerce

instance Hashable CORSConfiguration where

instance NFData CORSConfiguration where

instance ToXML CORSConfiguration where
        toXML CORSConfiguration'{..}
          = mconcat [toXMLList "CORSRule" _ccCORSRules]
