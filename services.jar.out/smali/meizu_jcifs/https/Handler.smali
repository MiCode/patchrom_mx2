.class public Lmeizu_jcifs/https/Handler;
.super Lmeizu_jcifs/http/Handler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x1bb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmeizu_jcifs/http/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x1bb

    return v0
.end method
