{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CommonPrefix
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CommonPrefix where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 'commonPrefix' smart constructor.
newtype CommonPrefix = CommonPrefix'{_cpPrefix ::
                                     Maybe Text}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommonPrefix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpPrefix' - Undocumented member.
commonPrefix
    :: CommonPrefix
commonPrefix = CommonPrefix'{_cpPrefix = Nothing}

-- | Undocumented member.
cpPrefix :: Lens' CommonPrefix (Maybe Text)
cpPrefix = lens _cpPrefix (\ s a -> s{_cpPrefix = a})

instance FromXML CommonPrefix where
        parseXML x = CommonPrefix' <$> (x .@? "Prefix")

instance Hashable CommonPrefix where

instance NFData CommonPrefix where
