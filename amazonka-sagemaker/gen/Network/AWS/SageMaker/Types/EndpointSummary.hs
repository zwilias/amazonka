{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.EndpointSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EndpointStatus

-- | Provides summary information for an endpoint.
--
--
--
-- /See:/ 'endpointSummary' smart constructor.
data EndpointSummary = EndpointSummary'{_esEndpointName
                                        :: !Text,
                                        _esEndpointARN :: !Text,
                                        _esCreationTime :: !POSIX,
                                        _esLastModifiedTime :: !POSIX,
                                        _esEndpointStatus :: !EndpointStatus}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esEndpointName' - The name of the endpoint.
--
-- * 'esEndpointARN' - The Amazon Resource Name (ARN) of the endpoint.
--
-- * 'esCreationTime' - A timestamp that shows when the endpoint was created.
--
-- * 'esLastModifiedTime' - A timestamp that shows when the endpoint was last modified.
--
-- * 'esEndpointStatus' - The status of the endpoint.
endpointSummary
    :: Text -- ^ 'esEndpointName'
    -> Text -- ^ 'esEndpointARN'
    -> UTCTime -- ^ 'esCreationTime'
    -> UTCTime -- ^ 'esLastModifiedTime'
    -> EndpointStatus -- ^ 'esEndpointStatus'
    -> EndpointSummary
endpointSummary pEndpointName_ pEndpointARN_
  pCreationTime_ pLastModifiedTime_ pEndpointStatus_
  = EndpointSummary'{_esEndpointName = pEndpointName_,
                     _esEndpointARN = pEndpointARN_,
                     _esCreationTime = _Time # pCreationTime_,
                     _esLastModifiedTime = _Time # pLastModifiedTime_,
                     _esEndpointStatus = pEndpointStatus_}

-- | The name of the endpoint.
esEndpointName :: Lens' EndpointSummary Text
esEndpointName = lens _esEndpointName (\ s a -> s{_esEndpointName = a})

-- | The Amazon Resource Name (ARN) of the endpoint.
esEndpointARN :: Lens' EndpointSummary Text
esEndpointARN = lens _esEndpointARN (\ s a -> s{_esEndpointARN = a})

-- | A timestamp that shows when the endpoint was created.
esCreationTime :: Lens' EndpointSummary UTCTime
esCreationTime = lens _esCreationTime (\ s a -> s{_esCreationTime = a}) . _Time

-- | A timestamp that shows when the endpoint was last modified.
esLastModifiedTime :: Lens' EndpointSummary UTCTime
esLastModifiedTime = lens _esLastModifiedTime (\ s a -> s{_esLastModifiedTime = a}) . _Time

-- | The status of the endpoint.
esEndpointStatus :: Lens' EndpointSummary EndpointStatus
esEndpointStatus = lens _esEndpointStatus (\ s a -> s{_esEndpointStatus = a})

instance FromJSON EndpointSummary where
        parseJSON
          = withObject "EndpointSummary"
              (\ x ->
                 EndpointSummary' <$>
                   (x .: "EndpointName") <*> (x .: "EndpointArn") <*>
                     (x .: "CreationTime")
                     <*> (x .: "LastModifiedTime")
                     <*> (x .: "EndpointStatus"))

instance Hashable EndpointSummary where

instance NFData EndpointSummary where
