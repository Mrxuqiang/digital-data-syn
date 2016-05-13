/*
================================================================================
��ṹ����:TB_PRCDB
��ṹ����:���۵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCDB;
drop index AK_TB_PRCDB;
drop table TB_PRCDB;
create table TB_PRCDB  (
   PRCDB_ID             INTEGER                               not null,        /*������ϸID        */    
   PRCDB001             INTEGER                               not null,        /*���۵�����ID      */
   PRCDB002             INTEGER                               not null,        /*��Դ����ID        */
   PRCDB003             VARCHAR2(30)                         not null,         /*��Դ����          */
   PRCDB004             INTEGER                               not null,        /*��Դ��ϸID        */
   PRCDB005             INTEGER                               not null,        /*��Ʒ����          */
   PRCDB006             INTEGER,                                               /*ά��1             */
   PRCDB007             INTEGER,                                               /*ά��2             */
   PRCDB008             INTEGER,                                               /*ά��3             */
   PRCDB009             INTEGER,                                               /*ά��4             */
   PRCDB010             INTEGER,                                               /*ά��5             */
   PRCDB011             INTEGER                               not null,        /*�ֿ�              */
   PRCDB012             INTEGER                               not null,        /*��λ              */
   PRCDB013             VARCHAR2(30)                          not null,        /*ԭ������          */
   PRCDB014             VARCHAR2(30),                                          /*ԭ������          */
   PRCDB015             VARCHAR2(30),                                          /*��������          */
   PRCDB016             VARCHAR2(30),                                          /*�¸�����          */
   PRCDB017             VARCHAR2(30),                                          /*��������          */
   PRCDB018             VARCHAR2(30),                                          /*�³�������        */
   PRCDB019             INTEGER                               not null,        /*��λ              */
   PRCDB020             NUMBER(12,2)                          not null,        /*��λ������        */       
   PRCDB021             NUMBER(18,3)                          not null,        /*ԭ�������        */
   PRCDB022             NUMBER(18,3)                          not null,        /*���ε�������      */
   PRCDB023             NUMBER(12,2)                          not null,        /*ԭ˰ǰ����        */
   PRCDB024             NUMBER(12,2)                          not null,        /*ԭ��˰����        */
   PRCDB025             NUMBER(12,2)                          not null,        /*��˰ǰ����        */
   PRCDB026             NUMBER(12,2)                          not null,        /*�º�˰����        */
   PRCDB027             INTEGER                               not null,        /*˰��              */
   PRCDB028             NUMBER(12,2)                          not null,        /*˰��              */
   PRCDB029             NUMBER(12,2)                          not null,        /*ԭ˰ǰ���        */
   PRCDB030             NUMBER(12,2)                          not null,        /*ԭ��˰���        */
   PRCDB031             NUMBER(12,2)                          not null,        /*���ۺ�˰ǰ���    */
   PRCDB032             NUMBER(12,2)                          not null,        /*���ۺ�˰���    */
   PRCDB033             NUMBER(18,3)                          not null,        /*����δ������      */
   PRCDB034             NUMBER(18,3)                          not null,        /*����δ���������  */
   PRCDB035             NUMBER(12,2)                          not null,        /*��������ǰ˰ǰ���*/
   PRCDB036             NUMBER(12,2)                          not null,        /*��������ǰ��˰���*/
   PRCDB037             NUMBER(12,2)                          not null,        /*����������˰ǰ���*/
   PRCDB038             NUMBER(12,2)                          not null,        /*����������˰���*/
   PRCDB039             VARCHAR2(30),                                          /*����Ӧ���ݹ�����  */
   PRCDB040             VARCHAR2(30),                                          /*����Ӧ���ݹ�����  */  
   PRCDB041             NUMBER(18,3),                                          /*�ѽ�������        */
   PRCDB042             VARCHAR2(1)                           not null,        /*��Ʒ��������      */
   PRCDB043             VARCHAR2(255),                                         /*��ע              */
   PRCDB044             INTEGER                               not null,        /*��Ӧ��            */      
   PRCDB045             VARCHAR2(1)                           not null,        /*��Ӫ��ʽ          */      
   CREATE_USER          VARCHAR2(12),                                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                                          /*������Ա����     */                               
   CREATE_DATE          DATE,                                                  /*��������         */
   MODIFIER             VARCHAR2(12),                                          /*�޸���Ա         */
   MODI_DATE            DATE,                                                  /*�޸�����         */
   FLAG                 NUMBER(1),                                             /*����״̬         */
   constraint PK_TB_PRCDB primary key (PRCDB_ID)
);
create unique index AK_TB_PRCDB on TB_PRCDB (PRCDB_ID,PRCDB002,PRCDB005);
create sequence SEQ_TB_PRCDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDB to public;
grant index  on TB_PRCDB to public;
grant update on TB_PRCDB to public; 
grant delete on TB_PRCDB to public;  
grant insert on TB_PRCDB to public; 
grant select on SEQ_TB_PRCDB to public;   