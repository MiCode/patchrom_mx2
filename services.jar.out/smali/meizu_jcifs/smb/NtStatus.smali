.class public interface abstract Lmeizu_jcifs/smb/NtStatus;
.super Ljava/lang/Object;
.source "NtStatus.java"


# static fields
.field public static final NT_STATUS_ACCESS_DENIED:I = -0x3fffffde

.field public static final NT_STATUS_ACCESS_VIOLATION:I = -0x3ffffffb

.field public static final NT_STATUS_ACCOUNT_DISABLED:I = -0x3fffff8e

.field public static final NT_STATUS_ACCOUNT_LOCKED_OUT:I = -0x3ffffdcc

.field public static final NT_STATUS_ACCOUNT_RESTRICTION:I = -0x3fffff92

.field public static final NT_STATUS_BAD_NETWORK_NAME:I = -0x3fffff34

.field public static final NT_STATUS_BUFFER_TOO_SMALL:I = -0x3fffffdd

.field public static final NT_STATUS_CANNOT_DELETE:I = -0x3ffffedf

.field public static final NT_STATUS_CANT_ACCESS_DOMAIN_INFO:I = -0x3fffff26

.field public static final NT_STATUS_CODES:[I = null

.field public static final NT_STATUS_DELETE_PENDING:I = -0x3fffffaa

.field public static final NT_STATUS_DUPLICATE_NAME:I = -0x3fffff43

.field public static final NT_STATUS_FILE_IS_A_DIRECTORY:I = -0x3fffff46

.field public static final NT_STATUS_INSTANCE_NOT_AVAILABLE:I = -0x3fffff55

.field public static final NT_STATUS_INVALID_COMPUTER_NAME:I = -0x3ffffede

.field public static final NT_STATUS_INVALID_HANDLE:I = -0x3ffffff8

.field public static final NT_STATUS_INVALID_INFO_CLASS:I = -0x3ffffffd

.field public static final NT_STATUS_INVALID_LOGON_HOURS:I = -0x3fffff91

.field public static final NT_STATUS_INVALID_PARAMETER:I = -0x3ffffff3

.field public static final NT_STATUS_INVALID_PIPE_STATE:I = -0x3fffff53

.field public static final NT_STATUS_INVALID_SID:I = -0x3fffff88

.field public static final NT_STATUS_INVALID_WORKSTATION:I = -0x3fffff90

.field public static final NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED:I = -0x3ffffd87

.field public static final NT_STATUS_LOGON_FAILURE:I = -0x3fffff93

.field public static final NT_STATUS_LOGON_TYPE_NOT_GRANTED:I = -0x3ffffea5

.field public static final NT_STATUS_MESSAGES:[Ljava/lang/String; = null

.field public static final NT_STATUS_MORE_PROCESSING_REQUIRED:I = -0x3fffffea

.field public static final NT_STATUS_NETWORK_ACCESS_DENIED:I = -0x3fffff36

.field public static final NT_STATUS_NETWORK_NAME_DELETED:I = -0x3fffff37

.field public static final NT_STATUS_NOLOGON_WORKSTATION_TRUST_ACCOUNT:I = -0x3ffffe67

.field public static final NT_STATUS_NONE_MAPPED:I = -0x3fffff8d

.field public static final NT_STATUS_NOT_A_DIRECTORY:I = -0x3ffffefd

.field public static final NT_STATUS_NOT_FOUND:I = -0x3ffffddb

.field public static final NT_STATUS_NOT_IMPLEMENTED:I = -0x3ffffffe

.field public static final NT_STATUS_NO_LOGON_SERVERS:I = -0x3fffffa2

.field public static final NT_STATUS_NO_SUCH_ALIAS:I = -0x3ffffeaf

.field public static final NT_STATUS_NO_SUCH_DEVICE:I = -0x3ffffff2

.field public static final NT_STATUS_NO_SUCH_DOMAIN:I = -0x3fffff21

.field public static final NT_STATUS_NO_SUCH_FILE:I = -0x3ffffff1

.field public static final NT_STATUS_NO_SUCH_USER:I = -0x3fffff9c

.field public static final NT_STATUS_NO_TRUST_SAM_ACCOUNT:I = -0x3ffffe75

.field public static final NT_STATUS_OBJECT_NAME_COLLISION:I = -0x3fffffcb

.field public static final NT_STATUS_OBJECT_NAME_INVALID:I = -0x3fffffcd

.field public static final NT_STATUS_OBJECT_NAME_NOT_FOUND:I = -0x3fffffcc

.field public static final NT_STATUS_OBJECT_PATH_INVALID:I = -0x3fffffc7

.field public static final NT_STATUS_OBJECT_PATH_NOT_FOUND:I = -0x3fffffc6

.field public static final NT_STATUS_OBJECT_PATH_SYNTAX_BAD:I = -0x3fffffc5

.field public static final NT_STATUS_OK:I = 0x0

.field public static final NT_STATUS_PASSWORD_EXPIRED:I = -0x3fffff8f

.field public static final NT_STATUS_PASSWORD_MUST_CHANGE:I = -0x3ffffddc

.field public static final NT_STATUS_PATH_NOT_COVERED:I = -0x3ffffda9

.field public static final NT_STATUS_PIPE_BROKEN:I = -0x3ffffeb5

.field public static final NT_STATUS_PIPE_BUSY:I = -0x3fffff52

.field public static final NT_STATUS_PIPE_CLOSING:I = -0x3fffff4f

.field public static final NT_STATUS_PIPE_DISCONNECTED:I = -0x3fffff50

.field public static final NT_STATUS_PIPE_LISTENING:I = -0x3fffff4d

.field public static final NT_STATUS_PIPE_NOT_AVAILABLE:I = -0x3fffff54

.field public static final NT_STATUS_PORT_DISCONNECTED:I = -0x3fffffc9

.field public static final NT_STATUS_REQUEST_NOT_ACCEPTED:I = -0x3fffff30

.field public static final NT_STATUS_SHARING_VIOLATION:I = -0x3fffffbd

.field public static final NT_STATUS_TRUSTED_DOMAIN_FAILURE:I = -0x3ffffe74

.field public static final NT_STATUS_UNSUCCESSFUL:I = -0x3fffffff

.field public static final NT_STATUS_USER_EXISTS:I = -0x3fffff9d

.field public static final NT_STATUS_WRONG_PASSWORD:I = -0x3fffff96


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x3e

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    .line 155
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "The operation completed successfully."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A device attached to the system is not functioning."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Incorrect function."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "The parameter is incorrect."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Invalid access to memory location."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The handle is invalid."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "The parameter is incorrect."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "More data is available."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "The data area passed to a system call is too small."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "The filename, directory name, or volume label syntax is incorrect."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Cannot create a file when that file already exists."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "The handle is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "The system cannot find the path specified."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "The process cannot access the file because it is being used by another process."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "There are currently no logon servers available to service the logon request."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "The specified user already exists."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "The specified user does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "The specified network password is not correct."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Logon failure: unknown user name or bad password."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Logon failure: user account restriction."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Logon failure: account logon time restriction violation."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Logon failure: user not allowed to log on to this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Logon failure: the specified account password has expired."

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Logon failure: account currently disabled."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "No mapping between account names and security IDs was done."

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "The security ID structure is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "The pipe state is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "No process is on the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "The pipe is being closed."

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Waiting for a process to open the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "A duplicate name exists on the network."

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "The specified network name is no longer available."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Network access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "The network name cannot be found."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "The specified domain did not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "The directory name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "The format of the specified computer name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "The pipe has been ended."

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "The specified local group does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Logon failure: the user has not been granted the requested logon type at this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "The trust relationship between the primary domain and the trusted domain failed."

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "The user must change his password before he logs on the first time."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "NT_STATUS_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "The referenced account is currently locked out and may not be logged on to."

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "The remote system is not reachable by the transport."

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    aput-object v2, v0, v1

    sput-object v0, Lmeizu_jcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    return-void

    .line 90
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0xc0t
        0x2t 0x0t 0x0t 0xc0t
        0x3t 0x0t 0x0t 0xc0t
        0x5t 0x0t 0x0t 0xc0t
        0x8t 0x0t 0x0t 0xc0t
        0xdt 0x0t 0x0t 0xc0t
        0xet 0x0t 0x0t 0xc0t
        0xft 0x0t 0x0t 0xc0t
        0x16t 0x0t 0x0t 0xc0t
        0x22t 0x0t 0x0t 0xc0t
        0x23t 0x0t 0x0t 0xc0t
        0x33t 0x0t 0x0t 0xc0t
        0x34t 0x0t 0x0t 0xc0t
        0x35t 0x0t 0x0t 0xc0t
        0x37t 0x0t 0x0t 0xc0t
        0x39t 0x0t 0x0t 0xc0t
        0x3at 0x0t 0x0t 0xc0t
        0x3bt 0x0t 0x0t 0xc0t
        0x43t 0x0t 0x0t 0xc0t
        0x56t 0x0t 0x0t 0xc0t
        0x5et 0x0t 0x0t 0xc0t
        0x63t 0x0t 0x0t 0xc0t
        0x64t 0x0t 0x0t 0xc0t
        0x6at 0x0t 0x0t 0xc0t
        0x6dt 0x0t 0x0t 0xc0t
        0x6et 0x0t 0x0t 0xc0t
        0x6ft 0x0t 0x0t 0xc0t
        0x70t 0x0t 0x0t 0xc0t
        0x71t 0x0t 0x0t 0xc0t
        0x72t 0x0t 0x0t 0xc0t
        0x73t 0x0t 0x0t 0xc0t
        0x78t 0x0t 0x0t 0xc0t
        0xabt 0x0t 0x0t 0xc0t
        0xact 0x0t 0x0t 0xc0t
        0xadt 0x0t 0x0t 0xc0t
        0xaet 0x0t 0x0t 0xc0t
        0xb0t 0x0t 0x0t 0xc0t
        0xb1t 0x0t 0x0t 0xc0t
        0xb3t 0x0t 0x0t 0xc0t
        0xbat 0x0t 0x0t 0xc0t
        0xbdt 0x0t 0x0t 0xc0t
        0xc9t 0x0t 0x0t 0xc0t
        0xcat 0x0t 0x0t 0xc0t
        0xcct 0x0t 0x0t 0xc0t
        0xd0t 0x0t 0x0t 0xc0t
        0xdat 0x0t 0x0t 0xc0t
        0xdft 0x0t 0x0t 0xc0t
        0x3t 0x1t 0x0t 0xc0t
        0x21t 0x1t 0x0t 0xc0t
        0x22t 0x1t 0x0t 0xc0t
        0x4bt 0x1t 0x0t 0xc0t
        0x51t 0x1t 0x0t 0xc0t
        0x5bt 0x1t 0x0t 0xc0t
        0x8bt 0x1t 0x0t 0xc0t
        0x8ct 0x1t 0x0t 0xc0t
        0x99t 0x1t 0x0t 0xc0t
        0x24t 0x2t 0x0t 0xc0t
        0x25t 0x2t 0x0t 0xc0t
        0x34t 0x2t 0x0t 0xc0t
        0x57t 0x2t 0x0t 0xc0t
        0x79t 0x2t 0x0t 0xc0t
    .end array-data
.end method
