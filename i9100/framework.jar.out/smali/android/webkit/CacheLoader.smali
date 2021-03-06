.class Landroid/webkit/CacheLoader;
.super Landroid/webkit/StreamLoader;
.source "CacheLoader.java"


# instance fields
.field mCacheResult:Landroid/webkit/CacheManager$CacheResult;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 0
    .parameter "loadListener"
    .parameter "result"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 39
    iput-object p2, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    .line 40
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 2
    .parameter "headers"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setLocation(Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setExpires(Ljava/lang/String;)V

    .line 67
    :cond_2
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setContentDisposition(Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setXPermittedCrossDomainPolicies(Ljava/lang/String;)V

    .line 74
    :cond_4
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    .line 45
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-wide v0, v0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iput-wide v0, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    .line 46
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget v1, v1, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 47
    return v3
.end method
