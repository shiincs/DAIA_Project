package kr.kosa.destiny.upload.dao;

import java.util.HashMap;
import java.util.List;

import kr.kosa.destiny.upload.model.UploadFileVO;

public interface IUploadFileRepository {
	int getMaxFileId();
	void uploadFile(UploadFileVO file);

	List<UploadFileVO> getFileList(String directoryName);
	List<UploadFileVO> getAllFileList();
	List<UploadFileVO> getImageList(String directoryName);

	UploadFileVO getFile(int fileId);
	UploadFileVO getNameFile(String fileName);

	String getDirectoryName(int fileId);
	void updateDirectory(HashMap<String, Object> map);

	void deleteFile(int fileId);
	void updateFile(UploadFileVO file);
	void insertFile(UploadFileVO file);
}

