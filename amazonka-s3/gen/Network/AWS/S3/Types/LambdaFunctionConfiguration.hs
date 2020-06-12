{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.LambdaFunctionConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.LambdaFunctionConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Event
import Network.AWS.S3.Types.NotificationConfigurationFilter

-- | Container for specifying the AWS Lambda notification configuration.
--
-- /See:/ 'lambdaFunctionConfiguration' smart constructor.
data LambdaFunctionConfiguration = LambdaFunctionConfiguration'{_lfcId
                                                                ::
                                                                !(Maybe Text),
                                                                _lfcFilter ::
                                                                !(Maybe
                                                                    NotificationConfigurationFilter),
                                                                _lfcLambdaFunctionARN
                                                                :: !Text,
                                                                _lfcEvents ::
                                                                ![Event]}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'LambdaFunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfcId' - Undocumented member.
--
-- * 'lfcFilter' - Undocumented member.
--
-- * 'lfcLambdaFunctionARN' - Lambda cloud function ARN that Amazon S3 can invoke when it detects events of the specified type.
--
-- * 'lfcEvents' - Undocumented member.
lambdaFunctionConfiguration
    :: Text -- ^ 'lfcLambdaFunctionARN'
    -> LambdaFunctionConfiguration
lambdaFunctionConfiguration pLambdaFunctionARN_
  = LambdaFunctionConfiguration'{_lfcId = Nothing,
                                 _lfcFilter = Nothing,
                                 _lfcLambdaFunctionARN = pLambdaFunctionARN_,
                                 _lfcEvents = mempty}

-- | Undocumented member.
lfcId :: Lens' LambdaFunctionConfiguration (Maybe Text)
lfcId = lens _lfcId (\ s a -> s{_lfcId = a})

-- | Undocumented member.
lfcFilter :: Lens' LambdaFunctionConfiguration (Maybe NotificationConfigurationFilter)
lfcFilter = lens _lfcFilter (\ s a -> s{_lfcFilter = a})

-- | Lambda cloud function ARN that Amazon S3 can invoke when it detects events of the specified type.
lfcLambdaFunctionARN :: Lens' LambdaFunctionConfiguration Text
lfcLambdaFunctionARN = lens _lfcLambdaFunctionARN (\ s a -> s{_lfcLambdaFunctionARN = a})

-- | Undocumented member.
lfcEvents :: Lens' LambdaFunctionConfiguration [Event]
lfcEvents = lens _lfcEvents (\ s a -> s{_lfcEvents = a}) . _Coerce

instance FromXML LambdaFunctionConfiguration where
        parseXML x
          = LambdaFunctionConfiguration' <$>
              (x .@? "Id") <*> (x .@? "Filter") <*>
                (x .@ "CloudFunction")
                <*> (parseXMLList "Event" x)

instance Hashable LambdaFunctionConfiguration where

instance NFData LambdaFunctionConfiguration where

instance ToXML LambdaFunctionConfiguration where
        toXML LambdaFunctionConfiguration'{..}
          = mconcat
              ["Id" @= _lfcId, "Filter" @= _lfcFilter,
               "CloudFunction" @= _lfcLambdaFunctionARN,
               toXMLList "Event" _lfcEvents]
