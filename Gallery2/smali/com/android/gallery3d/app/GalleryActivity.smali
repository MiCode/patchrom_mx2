.class public interface abstract Lcom/android/gallery3d/app/GalleryActivity;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActivity$IntentType;
    }
.end annotation


# virtual methods
.method public abstract getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
.end method

.method public abstract getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
.end method

.method public abstract getIntentType()Lcom/android/gallery3d/app/GalleryActivity$IntentType;
.end method

.method public abstract getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;
.end method

.method public abstract getStateManager()Lcom/android/gallery3d/app/StateManager;
.end method

.method public abstract getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;
.end method
