.class public interface abstract Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataLoader"
.end annotation


# virtual methods
.method public abstract get(I)Lcom/android/gallery3d/data/MediaItem;
.end method

.method public abstract getActiveStart()I
.end method

.method public abstract getHeader(I)Ljava/lang/String;
.end method

.method public abstract isActive(I)Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setActiveWindow(II)V
.end method

.method public abstract setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V
.end method

.method public abstract setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
.end method

.method public abstract size()I
.end method
