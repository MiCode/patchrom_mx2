.class public Lmeizu/samba/client/SambaAuthException;
.super Ljava/lang/RuntimeException;
.source "SambaAuthException.java"


# static fields
.field private static final serialVersionUID:J = 0x7b689d27d110L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
