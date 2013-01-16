.class Landroid/webkit/WebViewCore$TextFieldInitData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFieldInitData"
.end annotation


# instance fields
.field public mContentBounds:Landroid/graphics/Rect;

.field public mContentRect:Landroid/graphics/Rect;

.field public mFieldPointer:I

.field public mIsAutoCompleteEnabled:Z

.field public mIsSpellCheckEnabled:Z

.field public mIsTextFieldNext:Z

.field public mIsTextFieldPrev:Z

.field public mLabel:Ljava/lang/String;

.field public mMaxLength:I

.field public mName:Ljava/lang/String;

.field public mNodeLayerId:I

.field public mRtl:Z

.field public mSelectionEnd:I

.field public mSelectionStart:I

.field public mText:Ljava/lang/String;

.field public mTextPaddingBottom:I

.field public mTextPaddingLeft:I

.field public mTextPaddingRight:I

.field public mTextPaddingTop:I

.field public mTextSize:I

.field public mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 956
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
