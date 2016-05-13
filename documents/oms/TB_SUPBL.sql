/*
================================================================================
��ṹ����:TB_SUPBL
��ṹ����:��ʷ���ض���ι�̨�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBL;
drop index AK_TB_SUPBL;
drop table TB_SUPBL;
create table TB_SUPBL  (
   SUPBL000             VARCHAR2(8)                     not null,  /*��������                 */
   SUPBL001             VARCHAR2(30)                    not null,  /*ͼֽ���                 */
   SUPBL002             INTEGER                         not null,  /*������                 */
   SUPBL003             INTEGER                         not null,  /*��ߵ����(�������±�)   */
   SUPBL004             NUMBER(12,2)                    not null,  /*���X����                */
   SUPBL005             NUMBER(12,2)                    not null,  /*���Y����                */
   SUPBL090             VARCHAR2(200),                             /*��ע                     */
   constraint PK_TB_SUPBL primary key (SUPBL000,SUPBL001,SUPBL003)
);
/*create unique index AK_TB_SUPBL on TB_SUPBL (SUPBL000,SUPBL001,SUPBL003);*/
create sequence SEQ_TB_SUPBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBL to public;
grant index  on TB_SUPBL to public;
grant update on TB_SUPBL to public; 
grant delete on TB_SUPBL to public;  
grant insert on TB_SUPBL to public; 
grant select on SEQ_TB_SUPBL to public;   
