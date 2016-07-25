// ----------------------------------------------------------------------
// <copyright file="Receipts.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase Receipts.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.Logic.Manager
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Data;

    /// <summary>
    /// Contiene los metodos relacionados con las ventas.
    /// </summary>
    public class Receipts
    {
        /// <summary>
        /// Consulta la base de datos y trae el ultimo numero de factura generado.
        /// </summary>
        /// <returns>El siguiente numero a facturar.</returns>
        public static int GetNewReceiptNumber()
        {
            try
            {
                using (FinancesEntities context = new FinancesEntities())
                {
                    int lastNumber = context.Receipt.AsNoTracking().Select(x => x.IdReceipt).Take(1).FirstOrDefault();
                    return lastNumber + 1;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// Guarda la factura en la base de datos.
        /// </summary>
        /// <param name="receipt">Registro de recibo a guardar en la base de datos.</param>
        /// <param name="products">Lista de productos con su cantidad para guardar a la base de datos.</param>
        /// <param name="pay">Registro del pago hecho.</param>
        /// <returns>True si logra guardar todo correctamente, de lo contrario retorna False.</returns>
        public static bool InsertReceipt(Receipt receipt, List<ReceiptProduct> products, Payment pay)
        {
            try
            {
                using (FinancesEntities context = new FinancesEntities())
                {
                    context.Set<Receipt>().Add(receipt);
                    context.ReceiptProduct.AddRange(products);
                    context.Set<Payment>().Add(pay);
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}