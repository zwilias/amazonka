{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Update
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Update where

import Network.AWS.EKS.Types.ErrorDetail
import Network.AWS.EKS.Types.UpdateParam
import Network.AWS.EKS.Types.UpdateStatus
import Network.AWS.EKS.Types.UpdateType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an asynchronous update.
--
--
--
-- /See:/ 'update' smart constructor.
data Update = Update'{_uStatus ::
                      !(Maybe UpdateStatus),
                      _uCreatedAt :: !(Maybe POSIX),
                      _uParams :: !(Maybe [UpdateParam]),
                      _uId :: !(Maybe Text), _uType :: !(Maybe UpdateType),
                      _uErrors :: !(Maybe [ErrorDetail])}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Update' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uStatus' - The current status of the update.
--
-- * 'uCreatedAt' - The Unix epoch timestamp in seconds for when the update was created.
--
-- * 'uParams' - A key-value map that contains the parameters associated with the update.
--
-- * 'uId' - A UUID that is used to track the update.
--
-- * 'uType' - The type of the update.
--
-- * 'uErrors' - Any errors associated with a @Failed@ update.
update
    :: Update
update
  = Update'{_uStatus = Nothing, _uCreatedAt = Nothing,
            _uParams = Nothing, _uId = Nothing, _uType = Nothing,
            _uErrors = Nothing}

-- | The current status of the update.
uStatus :: Lens' Update (Maybe UpdateStatus)
uStatus = lens _uStatus (\ s a -> s{_uStatus = a})

-- | The Unix epoch timestamp in seconds for when the update was created.
uCreatedAt :: Lens' Update (Maybe UTCTime)
uCreatedAt = lens _uCreatedAt (\ s a -> s{_uCreatedAt = a}) . mapping _Time

-- | A key-value map that contains the parameters associated with the update.
uParams :: Lens' Update [UpdateParam]
uParams = lens _uParams (\ s a -> s{_uParams = a}) . _Default . _Coerce

-- | A UUID that is used to track the update.
uId :: Lens' Update (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | The type of the update.
uType :: Lens' Update (Maybe UpdateType)
uType = lens _uType (\ s a -> s{_uType = a})

-- | Any errors associated with a @Failed@ update.
uErrors :: Lens' Update [ErrorDetail]
uErrors = lens _uErrors (\ s a -> s{_uErrors = a}) . _Default . _Coerce

instance FromJSON Update where
        parseJSON
          = withObject "Update"
              (\ x ->
                 Update' <$>
                   (x .:? "status") <*> (x .:? "createdAt") <*>
                     (x .:? "params" .!= mempty)
                     <*> (x .:? "id")
                     <*> (x .:? "type")
                     <*> (x .:? "errors" .!= mempty))

instance Hashable Update where

instance NFData Update where
