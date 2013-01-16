.class public Lmeizu_jcifs/smb/SmbAuthException;
.super Lmeizu_jcifs/smb/SmbException;
.source "SmbAuthException.java"


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "errcode"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmeizu_jcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 32
    return-void
.end method
