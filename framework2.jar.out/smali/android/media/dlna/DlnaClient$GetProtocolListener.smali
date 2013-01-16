.class public interface abstract Landroid/media/dlna/DlnaClient$GetProtocolListener;
.super Ljava/lang/Object;
.source "DlnaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetProtocolListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onGetSuccess(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/dlna/DlnaProtocolInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/dlna/DlnaProtocolInfo;",
            ">;)V"
        }
    .end annotation
.end method
