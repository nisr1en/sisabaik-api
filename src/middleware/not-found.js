export function routeTidakDitemukan(req, res) {
  res.status(404).json({
    success: false,
    error: {
      code: 'ROUTE_NOT_FOUND',
      message: `Rute ${req.method} ${req.originalUrl} tidak ditemukan.`
    }
  });
}