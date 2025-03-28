#!/bin/bash
compress() {
    checkSpcialChar "$1"
    fileCompress="$1"
    content="$2"
    checkFileValidation "$content"
    if [ -f "$content" ]; then
        case "$content" in
            *.zip)
                echo "Updating zip file: $content"
                zip -u "$fileCompress" "$content" 
                ;;
            *.tar)
                echo "Creating tar file: $content"
                tar -cvf "$fileCompress" "$content" 
                ;;
            *.gz)
                echo "Compressing gz file: $content"
                gzip -k "$content" 
                mv "${content}.gz" "$fileCompress" 
                ;;
            *)
                echo "Unsupported file type: $content"
                return 1
                ;;
        esac
    elif [ -d "$content" ]; then
        case "$fileCompress" in
            *.zip)
                echo "Compressing directory into zip: $content"
                zip -r "$fileCompress" "$content" 
                ;;
            *.tar)
                echo "Creating tar file for directory: $content"
                tar -cvf "$fileCompress" "$content" 
                ;;
            *.gz)
                echo "Creating tar.gz file for directory: $content"
                tar -cvzf "$fileCompress" "$content" 
                ;;
            *)
                echo "Unsupported compression format for directory: $fileCompress"
                return 1
                ;;
        esac
    else
        echo "Content not found: $content"
        return 1 
    fi
    echo "Compression successful: $fileCompress"
    trackAction "compress $content into $fileCompress"
}
