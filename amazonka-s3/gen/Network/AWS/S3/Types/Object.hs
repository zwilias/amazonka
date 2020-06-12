{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Object
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Object where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ObjectStorageClass
import Network.AWS.S3.Types.Owner

-- | /See:/ 'object'' smart constructor.
data Object = Object'{_oOwner :: !(Maybe Owner),
                      _oETag :: !ETag, _oSize :: !Int, _oKey :: !ObjectKey,
                      _oStorageClass :: !ObjectStorageClass,
                      _oLastModified :: !RFC822}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOwner' - Undocumented member.
--
-- * 'oETag' - Undocumented member.
--
-- * 'oSize' - Undocumented member.
--
-- * 'oKey' - Undocumented member.
--
-- * 'oStorageClass' - The class of storage used to store the object.
--
-- * 'oLastModified' - Undocumented member.
object'
    :: ETag -- ^ 'oETag'
    -> Int -- ^ 'oSize'
    -> ObjectKey -- ^ 'oKey'
    -> ObjectStorageClass -- ^ 'oStorageClass'
    -> UTCTime -- ^ 'oLastModified'
    -> Object
object' pETag_ pSize_ pKey_ pStorageClass_
  pLastModified_
  = Object'{_oOwner = Nothing, _oETag = pETag_,
            _oSize = pSize_, _oKey = pKey_,
            _oStorageClass = pStorageClass_,
            _oLastModified = _Time # pLastModified_}

-- | Undocumented member.
oOwner :: Lens' Object (Maybe Owner)
oOwner = lens _oOwner (\ s a -> s{_oOwner = a})

-- | Undocumented member.
oETag :: Lens' Object ETag
oETag = lens _oETag (\ s a -> s{_oETag = a})

-- | Undocumented member.
oSize :: Lens' Object Int
oSize = lens _oSize (\ s a -> s{_oSize = a})

-- | Undocumented member.
oKey :: Lens' Object ObjectKey
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | The class of storage used to store the object.
oStorageClass :: Lens' Object ObjectStorageClass
oStorageClass = lens _oStorageClass (\ s a -> s{_oStorageClass = a})

-- | Undocumented member.
oLastModified :: Lens' Object UTCTime
oLastModified = lens _oLastModified (\ s a -> s{_oLastModified = a}) . _Time

instance FromXML Object where
        parseXML x
          = Object' <$>
              (x .@? "Owner") <*> (x .@ "ETag") <*> (x .@ "Size")
                <*> (x .@ "Key")
                <*> (x .@ "StorageClass")
                <*> (x .@ "LastModified")

instance Hashable Object where

instance NFData Object where
