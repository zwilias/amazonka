{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsEncryptionSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsEncryptionSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.HlsEncryptionType
import Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
import Network.AWS.MediaConvert.Types.HlsKeyProviderType
import Network.AWS.MediaConvert.Types.SpekeKeyProvider
import Network.AWS.MediaConvert.Types.StaticKeyProvider
import Network.AWS.Prelude

-- | Settings for HLS encryption
--
-- /See:/ 'hlsEncryptionSettings' smart constructor.
data HlsEncryptionSettings = HlsEncryptionSettings'{_hesEncryptionMethod
                                                    ::
                                                    !(Maybe HlsEncryptionType),
                                                    _hesConstantInitializationVector
                                                    :: !(Maybe Text),
                                                    _hesType ::
                                                    !(Maybe HlsKeyProviderType),
                                                    _hesStaticKeyProvider ::
                                                    !(Maybe StaticKeyProvider),
                                                    _hesSpekeKeyProvider ::
                                                    !(Maybe SpekeKeyProvider),
                                                    _hesInitializationVectorInManifest
                                                    ::
                                                    !(Maybe
                                                        HlsInitializationVectorInManifest)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'HlsEncryptionSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hesEncryptionMethod' - Undocumented member.
--
-- * 'hesConstantInitializationVector' - This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
--
-- * 'hesType' - Undocumented member.
--
-- * 'hesStaticKeyProvider' - Undocumented member.
--
-- * 'hesSpekeKeyProvider' - Undocumented member.
--
-- * 'hesInitializationVectorInManifest' - Undocumented member.
hlsEncryptionSettings
    :: HlsEncryptionSettings
hlsEncryptionSettings
  = HlsEncryptionSettings'{_hesEncryptionMethod =
                             Nothing,
                           _hesConstantInitializationVector = Nothing,
                           _hesType = Nothing, _hesStaticKeyProvider = Nothing,
                           _hesSpekeKeyProvider = Nothing,
                           _hesInitializationVectorInManifest = Nothing}

-- | Undocumented member.
hesEncryptionMethod :: Lens' HlsEncryptionSettings (Maybe HlsEncryptionType)
hesEncryptionMethod = lens _hesEncryptionMethod (\ s a -> s{_hesEncryptionMethod = a})

-- | This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
hesConstantInitializationVector :: Lens' HlsEncryptionSettings (Maybe Text)
hesConstantInitializationVector = lens _hesConstantInitializationVector (\ s a -> s{_hesConstantInitializationVector = a})

-- | Undocumented member.
hesType :: Lens' HlsEncryptionSettings (Maybe HlsKeyProviderType)
hesType = lens _hesType (\ s a -> s{_hesType = a})

-- | Undocumented member.
hesStaticKeyProvider :: Lens' HlsEncryptionSettings (Maybe StaticKeyProvider)
hesStaticKeyProvider = lens _hesStaticKeyProvider (\ s a -> s{_hesStaticKeyProvider = a})

-- | Undocumented member.
hesSpekeKeyProvider :: Lens' HlsEncryptionSettings (Maybe SpekeKeyProvider)
hesSpekeKeyProvider = lens _hesSpekeKeyProvider (\ s a -> s{_hesSpekeKeyProvider = a})

-- | Undocumented member.
hesInitializationVectorInManifest :: Lens' HlsEncryptionSettings (Maybe HlsInitializationVectorInManifest)
hesInitializationVectorInManifest = lens _hesInitializationVectorInManifest (\ s a -> s{_hesInitializationVectorInManifest = a})

instance FromJSON HlsEncryptionSettings where
        parseJSON
          = withObject "HlsEncryptionSettings"
              (\ x ->
                 HlsEncryptionSettings' <$>
                   (x .:? "encryptionMethod") <*>
                     (x .:? "constantInitializationVector")
                     <*> (x .:? "type")
                     <*> (x .:? "staticKeyProvider")
                     <*> (x .:? "spekeKeyProvider")
                     <*> (x .:? "initializationVectorInManifest"))

instance Hashable HlsEncryptionSettings where

instance NFData HlsEncryptionSettings where

instance ToJSON HlsEncryptionSettings where
        toJSON HlsEncryptionSettings'{..}
          = object
              (catMaybes
                 [("encryptionMethod" .=) <$> _hesEncryptionMethod,
                  ("constantInitializationVector" .=) <$>
                    _hesConstantInitializationVector,
                  ("type" .=) <$> _hesType,
                  ("staticKeyProvider" .=) <$> _hesStaticKeyProvider,
                  ("spekeKeyProvider" .=) <$> _hesSpekeKeyProvider,
                  ("initializationVectorInManifest" .=) <$>
                    _hesInitializationVectorInManifest])
