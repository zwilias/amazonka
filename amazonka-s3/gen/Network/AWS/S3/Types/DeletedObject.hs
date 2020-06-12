{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.DeletedObject
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.DeletedObject where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 'deletedObject' smart constructor.
data DeletedObject = DeletedObject'{_dVersionId ::
                                    !(Maybe ObjectVersionId),
                                    _dDeleteMarker :: !(Maybe Bool),
                                    _dDeleteMarkerVersionId :: !(Maybe Text),
                                    _dKey :: !(Maybe ObjectKey)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dVersionId' - Undocumented member.
--
-- * 'dDeleteMarker' - Undocumented member.
--
-- * 'dDeleteMarkerVersionId' - Undocumented member.
--
-- * 'dKey' - Undocumented member.
deletedObject
    :: DeletedObject
deletedObject
  = DeletedObject'{_dVersionId = Nothing,
                   _dDeleteMarker = Nothing,
                   _dDeleteMarkerVersionId = Nothing, _dKey = Nothing}

-- | Undocumented member.
dVersionId :: Lens' DeletedObject (Maybe ObjectVersionId)
dVersionId = lens _dVersionId (\ s a -> s{_dVersionId = a})

-- | Undocumented member.
dDeleteMarker :: Lens' DeletedObject (Maybe Bool)
dDeleteMarker = lens _dDeleteMarker (\ s a -> s{_dDeleteMarker = a})

-- | Undocumented member.
dDeleteMarkerVersionId :: Lens' DeletedObject (Maybe Text)
dDeleteMarkerVersionId = lens _dDeleteMarkerVersionId (\ s a -> s{_dDeleteMarkerVersionId = a})

-- | Undocumented member.
dKey :: Lens' DeletedObject (Maybe ObjectKey)
dKey = lens _dKey (\ s a -> s{_dKey = a})

instance FromXML DeletedObject where
        parseXML x
          = DeletedObject' <$>
              (x .@? "VersionId") <*> (x .@? "DeleteMarker") <*>
                (x .@? "DeleteMarkerVersionId")
                <*> (x .@? "Key")

instance Hashable DeletedObject where

instance NFData DeletedObject where
