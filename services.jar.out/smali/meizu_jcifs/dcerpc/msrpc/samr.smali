.class public Lmeizu_jcifs/dcerpc/msrpc/samr;
.super Ljava/lang/Object;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect4;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;,
        Lmeizu_jcifs/dcerpc/msrpc/samr$SamrCloseHandle;
    }
.end annotation


# static fields
.field public static final ACB_AUTOLOCK:I = 0x400

.field public static final ACB_DISABLED:I = 0x1

.field public static final ACB_DOMTRUST:I = 0x40

.field public static final ACB_DONT_REQUIRE_PREAUTH:I = 0x10000

.field public static final ACB_ENC_TXT_PWD_ALLOWED:I = 0x800

.field public static final ACB_HOMDIRREQ:I = 0x2

.field public static final ACB_MNS:I = 0x20

.field public static final ACB_NORMAL:I = 0x10

.field public static final ACB_NOT_DELEGATED:I = 0x4000

.field public static final ACB_PWNOEXP:I = 0x200

.field public static final ACB_PWNOTREQ:I = 0x4

.field public static final ACB_SMARTCARD_REQUIRED:I = 0x1000

.field public static final ACB_SVRTRUST:I = 0x100

.field public static final ACB_TEMPDUP:I = 0x8

.field public static final ACB_TRUSTED_FOR_DELEGATION:I = 0x2000

.field public static final ACB_USE_DES_KEY_ONLY:I = 0x8000

.field public static final ACB_WSTRUST:I = 0x80

.field public static final SE_GROUP_ENABLED:I = 0x4

.field public static final SE_GROUP_ENABLED_BY_DEFAULT:I = 0x2

.field public static final SE_GROUP_LOGON_ID:I = -0x40000000

.field public static final SE_GROUP_MANDATORY:I = 0x1

.field public static final SE_GROUP_OWNER:I = 0x8

.field public static final SE_GROUP_RESOURCE:I = 0x20000000

.field public static final SE_GROUP_USE_FOR_DENY_ONLY:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "12345778-1234-abcd-ef00-0123456789ac:1.0"

    return-object v0
.end method
