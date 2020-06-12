{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.AccessControlTranslation
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.AccessControlTranslation where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.OwnerOverride

-- | Container for information regarding the access control for replicas.
--
-- /See:/ 'accessControlTranslation' smart constructor.
newtype AccessControlTranslation = AccessControlTranslation'{_actOwner
                                                             :: OwnerOverride}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'AccessControlTranslation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actOwner' - The override value for the owner of the replica object.
accessControlTranslation
    :: OwnerOverride -- ^ 'actOwner'
    -> AccessControlTranslation
accessControlTranslation pOwner_
  = AccessControlTranslation'{_actOwner = pOwner_}

-- | The override value for the owner of the replica object.
actOwner :: Lens' AccessControlTranslation OwnerOverride
actOwner = lens _actOwner (\ s a -> s{_actOwner = a})

instance FromXML AccessControlTranslation where
        parseXML x
          = AccessControlTranslation' <$> (x .@ "Owner")

instance Hashable AccessControlTranslation where

instance NFData AccessControlTranslation where

instance ToXML AccessControlTranslation where
        toXML AccessControlTranslation'{..}
          = mconcat ["Owner" @= _actOwner]
