// ----------------------------------------------------------------------
// <copyright file="People.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase People.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.Logic.Manager
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using Data;

    /// <summary>
    /// Contiene todos los metodos de la clase person.
    /// </summary>
    public class People
    {
        /// <summary>
        /// Consulta la base de datos para traer el registro de una persona.
        /// </summary>
        /// <param name="idPerson">Documento de identidad de la persona que se quiere consultar.</param>
        /// <returns>Persona obtenida de la base de datos.</returns>
        public static Person GetPerson(int idPerson)
        {
            try
            {
                using (FinancesEntities context = new FinancesEntities())
                {
                    Person person = context.Person.AsNoTracking().Where(x => x.DocumentNumber == idPerson).Select(x => x).First();
                    return person;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// Actualiza el registro de una persona en la base de datos.
        /// </summary>
        /// <param name="person">Registro a actualizar.</param>
        /// <returns>True si actualiza correctamente, de lo contrario false.</returns>
        public static bool UpdatePerson(Person person)
        {
            try
            {
                using (FinancesEntities context = new FinancesEntities())
                {
                    Person dbPerson = context.Person.Where(x => x.DocumentNumber == person.DocumentNumber).Select(x => x).First();
                    dbPerson = person;
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// <summary>
        /// Inserta un registro de persona en la base de datos.
        /// </summary>
        /// <param name="person">Persona a insertar.</param>
        /// <returns>True si lo crea, de lo contrario retorna False.</returns>
        public static bool InsertPerson(Person person)
        {
            try
            {
                using (FinancesEntities context = new FinancesEntities())
                {
                    context.Set<Person>().Add(person);
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