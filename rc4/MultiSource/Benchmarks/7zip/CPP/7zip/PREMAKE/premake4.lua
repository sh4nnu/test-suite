-- A solution contains projects, and defines the available configurations
solution "p7zip"
   configurations { "Debug", "Release" }

-- includes for all projects
      includedirs {
        "../../../myWindows",
        "../../../",
        "../../../include_windows"
      }

      configuration "Debug"
         defines { "DEBUG", "_FILE_OFFSET_BITS=64", "_LARGEFILE_SOURCE", "_REENTRANT", "ENV_UNIX", "BREAK_HANDLER", "UNICODE", "_UNICODE" }
         flags { "Symbols" }
 
      configuration "Release"
         defines { "NDEBUG", "_FILE_OFFSET_BITS=64", "_LARGEFILE_SOURCE", "_REENTRANT", "ENV_UNIX", "BREAK_HANDLER", "UNICODE", "_UNICODE" }
         flags { "Optimize" }    

---------------------------------
   project "all_c_code"
     kind "StaticLib"
      language "C"
      files {
	"../../../../C/Aes.c",
	"../../../../C/7zStream.c",
	"../../../../C/Alloc.c",
	"../../../../C/Bra.c",
	"../../../../C/Bra86.c",
	"../../../../C/BraIA64.c",
	"../../../../C/BwtSort.c",
	"../../../../C/Delta.c",
	"../../../../C/HuffEnc.c",
	"../../../../C/LzFind.c",
	"../../../../C/LzFindMt.c",
	"../../../../C/Lzma2Dec.c",
	"../../../../C/Lzma2Enc.c",
	"../../../../C/LzmaDec.c",
	"../../../../C/LzmaEnc.c",
	"../../../../C/MtCoder.c",
	"../../../../C/Ppmd7.c",
	"../../../../C/Ppmd7Dec.c",
	"../../../../C/Ppmd7Enc.c",
	"../../../../C/Ppmd8.c",
	"../../../../C/Ppmd8Dec.c",
	"../../../../C/Ppmd8Enc.c",
	"../../../../C/Sha256.c",
	"../../../../C/Sort.c",
	"../../../../C/Threads.c",
	"../../../../C/Xz.c",
	"../../../../C/XzCrc64.c",
	"../../../../C/XzDec.c",
	"../../../../C/XzEnc.c",
	"../../../../C/XzIn.c",

	"../../../../C/7zCrc.c",
	"../../../../C/7zCrcOpt.c"
      }
 
---------------------------------
   project "7za"
      kind "ConsoleApp"
      language "C++"
      files {
	"../../../myWindows/myGetTickCount.cpp",
	"../../../myWindows/wine_date_and_time.cpp",
	"../../../myWindows/myAddExeFlag.cpp",
	"../../../myWindows/mySplitCommandLine.cpp",

	"../../UI/Console/BenchCon.cpp",
	"../../UI/Console/ConsoleClose.cpp",
	"../../UI/Console/ExtractCallbackConsole.cpp",
	"../../UI/Console/List.cpp",
	"../../UI/Console/Main.cpp",
	"../../UI/Console/MainAr.cpp",
	"../../UI/Console/OpenCallbackConsole.cpp",
	"../../UI/Console/PercentPrinter.cpp",
	"../../UI/Console/UpdateCallbackConsole.cpp",
	"../../UI/Console/UserInputUtils.cpp",

	"../../../Common/CommandLineParser.cpp",
	"../../../Common/CRC.cpp",
	"../../../Common/IntToString.cpp",
	"../../../Common/ListFileUtils.cpp",
	"../../../Common/StdInStream.cpp",
	"../../../Common/StdOutStream.cpp",
	"../../../Common/MyString.cpp",
	"../../../Common/MyWindows.cpp",
	"../../../Common/StringConvert.cpp",
	"../../../Common/StringToInt.cpp",
	"../../../Common/UTFConvert.cpp",
	"../../../Common/MyVector.cpp",
	"../../../Common/Wildcard.cpp",

	"../../../Windows/Error.cpp",
	"../../../Windows/FileDir.cpp",
	"../../../Windows/FileFind.cpp",
	"../../../Windows/FileIO.cpp",
	"../../../Windows/FileName.cpp",
	"../../../Windows/PropVariant.cpp",
	"../../../Windows/PropVariantConversions.cpp",
	"../../../Windows/Synchronization.cpp",
	"../../../Windows/System.cpp",
	"../../../Windows/Time.cpp",

	"../../Common/CreateCoder.cpp",
	"../../Common/CWrappers.cpp",
	"../../Common/FilePathAutoRename.cpp",
	"../../Common/FileStreams.cpp",
	"../../Common/FilterCoder.cpp",
	"../../Common/InBuffer.cpp",
	"../../Common/InOutTempBuffer.cpp",
	"../../Common/LimitedStreams.cpp",
	"../../Common/LockedStream.cpp",
	"../../Common/MemBlocks.cpp",
	"../../Common/MethodId.cpp",
	"../../Common/MethodProps.cpp",
	"../../Common/OffsetStream.cpp",
	"../../Common/OutBuffer.cpp",
	"../../Common/OutMemStream.cpp",
	"../../Common/ProgressMt.cpp",
	"../../Common/ProgressUtils.cpp",
	"../../Common/StreamBinder.cpp",
	"../../Common/StreamObjects.cpp",
	"../../Common/StreamUtils.cpp",
	"../../Common/VirtThread.cpp",

	"../../UI/Common/ArchiveCommandLine.cpp",
	"../../UI/Common/ArchiveExtractCallback.cpp",
	"../../UI/Common/ArchiveOpenCallback.cpp",
	"../../UI/Common/Bench.cpp",
	"../../UI/Common/DefaultName.cpp",
	"../../UI/Common/EnumDirItems.cpp",
	"../../UI/Common/Extract.cpp",
	"../../UI/Common/ExtractingFilePath.cpp",
	"../../UI/Common/LoadCodecs.cpp",
	"../../UI/Common/OpenArchive.cpp",
	"../../UI/Common/PropIDUtils.cpp",
	"../../UI/Common/SetProperties.cpp",
	"../../UI/Common/SortUtils.cpp",
	"../../UI/Common/TempFiles.cpp",
	"../../UI/Common/Update.cpp",
	"../../UI/Common/UpdateAction.cpp",
	"../../UI/Common/UpdateCallback.cpp",
	"../../UI/Common/UpdatePair.cpp",
	"../../UI/Common/UpdateProduce.cpp",

	"../../Archive/Bz2Handler.cpp",
	"../../Archive/DeflateProps.cpp",
	"../../Archive/GzHandler.cpp",
	"../../Archive/LzmaHandler.cpp",
	"../../Archive/PpmdHandler.cpp",
	"../../Archive/SplitHandler.cpp",
	"../../Archive/XzHandler.cpp",
	"../../Archive/ZHandler.cpp",

	"../../Archive/Common/CoderMixer2.cpp",
	"../../Archive/Common/CoderMixer2MT.cpp",
	"../../Archive/Common/CrossThreadProgress.cpp",
	"../../Archive/Common/DummyOutStream.cpp",
	"../../Archive/Common/FindSignature.cpp",
	"../../Archive/Common/HandlerOut.cpp",
	"../../Archive/Common/InStreamWithCRC.cpp",
	"../../Archive/Common/ItemNameUtils.cpp",
	"../../Archive/Common/MultiStream.cpp",
	"../../Archive/Common/OutStreamWithCRC.cpp",
	"../../Archive/Common/ParseProperties.cpp",

	"../../Archive/7z/7zCompressionMode.cpp",
	"../../Archive/7z/7zDecode.cpp",
	"../../Archive/7z/7zEncode.cpp",
	"../../Archive/7z/7zExtract.cpp",
	"../../Archive/7z/7zFolderInStream.cpp",
	"../../Archive/7z/7zFolderOutStream.cpp",
	"../../Archive/7z/7zHandler.cpp",
	"../../Archive/7z/7zHandlerOut.cpp",
	"../../Archive/7z/7zHeader.cpp",
	"../../Archive/7z/7zIn.cpp",
	"../../Archive/7z/7zOut.cpp",
	"../../Archive/7z/7zProperties.cpp",
	"../../Archive/7z/7zSpecStream.cpp",
	"../../Archive/7z/7zUpdate.cpp",
	"../../Archive/7z/7zRegister.cpp",

	"../../Archive/Cab/CabBlockInStream.cpp",
	"../../Archive/Cab/CabHandler.cpp",
	"../../Archive/Cab/CabHeader.cpp",
	"../../Archive/Cab/CabIn.cpp",
	"../../Archive/Cab/CabRegister.cpp",

	"../../Archive/Tar/TarHandler.cpp",
	"../../Archive/Tar/TarHandlerOut.cpp",
	"../../Archive/Tar/TarHeader.cpp",
	"../../Archive/Tar/TarIn.cpp",
	"../../Archive/Tar/TarOut.cpp",
	"../../Archive/Tar/TarRegister.cpp",
	"../../Archive/Tar/TarUpdate.cpp",

	"../../Archive/Zip/ZipAddCommon.cpp",
	"../../Archive/Zip/ZipHandler.cpp",
	"../../Archive/Zip/ZipHandlerOut.cpp",
	"../../Archive/Zip/ZipHeader.cpp",
	"../../Archive/Zip/ZipIn.cpp",
	"../../Archive/Zip/ZipItem.cpp",
	"../../Archive/Zip/ZipOut.cpp",
	"../../Archive/Zip/ZipUpdate.cpp",
	"../../Archive/Zip/ZipRegister.cpp",

	"../../Compress/Bcj2Coder.cpp",
	"../../Compress/Bcj2Register.cpp",
	"../../Compress/BcjCoder.cpp",
	"../../Compress/BcjRegister.cpp",
	"../../Compress/BitlDecoder.cpp",
	"../../Compress/BranchCoder.cpp",
	"../../Compress/BranchMisc.cpp",
	"../../Compress/BranchRegister.cpp",
	"../../Compress/ByteSwap.cpp",
	"../../Compress/BZip2Crc.cpp",
	"../../Compress/BZip2Decoder.cpp",
	"../../Compress/BZip2Encoder.cpp",
	"../../Compress/BZip2Register.cpp",
	"../../Compress/CopyCoder.cpp",
	"../../Compress/CopyRegister.cpp",
	"../../Compress/Deflate64Register.cpp",
	"../../Compress/DeflateDecoder.cpp",
	"../../Compress/DeflateEncoder.cpp",
	"../../Compress/DeflateRegister.cpp",
	"../../Compress/DeltaFilter.cpp",
	"../../Compress/ImplodeDecoder.cpp",
	"../../Compress/ImplodeHuffmanDecoder.cpp",
	"../../Compress/Lzma2Decoder.cpp",
	"../../Compress/Lzma2Encoder.cpp",
	"../../Compress/Lzma2Register.cpp",
	"../../Compress/LzmaDecoder.cpp",
	"../../Compress/LzmaEncoder.cpp",
	"../../Compress/LzmaRegister.cpp",
	"../../Compress/LzOutWindow.cpp",
	"../../Compress/Lzx86Converter.cpp",
	"../../Compress/LzxDecoder.cpp",
	"../../Compress/PpmdDecoder.cpp",
	"../../Compress/PpmdEncoder.cpp",
	"../../Compress/PpmdRegister.cpp",
	"../../Compress/PpmdZip.cpp",
	"../../Compress/QuantumDecoder.cpp",
	"../../Compress/ShrinkDecoder.cpp",
	"../../Compress/ZDecoder.cpp",

	"../../Crypto/7zAes.cpp",
	"../../Crypto/7zAesRegister.cpp",
	"../../Crypto/HmacSha1.cpp",
	"../../Crypto/MyAes.cpp",
	"../../Crypto/Pbkdf2HmacSha1.cpp",
	"../../Crypto/RandGen.cpp",
	"../../Crypto/Sha1.cpp",
	"../../Crypto/WzAes.cpp",
	"../../Crypto/ZipCrypto.cpp",
	"../../Crypto/ZipStrong.cpp"

      }

      configuration "linux"
	links       {  "all_c_code", "pthread" } 

