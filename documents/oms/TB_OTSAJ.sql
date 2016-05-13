/*20141216 crate by sundan
================================================================================
��ṹ����:TB_OTSAJ
��ṹ����:���˵�̧ͷ��Ϣ��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_OTSAJ;
drop index AK_TB_OTSAJ;
drop table TB_OTSAJ;
create table TB_OTSAJ  (
   OTSAJ_ID             INTEGER                         not null,  /*���˵�̧ͷ��ϢID              */
   OTSAJ001             VARCHAR2(4)                     not null,  /*��˾����                      */
   OTSAJ002             VARCHAR2(8)                     not null,  /*�̳�����                      */
   OTSAJ003             VARCHAR2(13),                              /*���������                    */
   OTSAJ004             VARCHAR2(13)                    not null,  /*��ͬ���                      */
   OTSAJ005             VARCHAR2(40),                              /*����Ƶ��                      */
   OTSAJ006             DATE,					                             /*��ͬ��Ч����                  */
   OTSAJ007             DATE,					                             /*��ͬ��ʼ����                  */
   OTSAJ008             DATE,					                             /*��ͬ��ֹ����                  */
   OTSAJ009             NUMBER(22,2),				                       /*��ͬ�����                    */
   OTSAJ010             VARCHAR2(60),                              /*Ʒ������                      */
   OTSAJ011             VARCHAR2(80),                              /*��ͬ����                      */
   OTSAJ012             VARCHAR2(4),                               /*��ͬ����                      */
   OTSAJ013             VARCHAR2(30),                              /*��ͬ��������                  */  
   OTSAJ014             VARCHAR2(60),                              /*����������                    */  
   OTSAJ015             VARCHAR2(10),                              /*�ͻ����                      */
   OTSAJ016             VARCHAR2(60),                              /*�ͻ�����                      */
   OTSAJ017             VARCHAR2(150),                              /*չλ����                      */
   OTSAJ018             VARCHAR2(40),                              /*��ͬ״̬                      */
   OTSAJ019             VARCHAR2(12),                              /*����޸���                    */
   OTSAJ020             DATE,                                      /*����޸�����                  */
   OTSAJ021             VARCHAR2(10),                               /*����޸�ʱ��                  */
   OTSAJ022             VARCHAR2(1),                               /*��Ϣ����                      */
   OTSAJ023             VARCHAR2(60),                              /*��Ϣ�ı�                      */
   OTSAJ024             DATE,                                      /*OMS��������                   */
   OTSAJ025             VARCHAR2(8),                               /*OMS����ʱ��                   */
   OTSAJ026             VARCHAR2(80),                              /*�̳�����                      */
   OTSAJ027             INTEGER,                                   /*�̳�ID                        */ 
   OTSAJ028             INTEGER,                                   /*��ͬid                        */ 
   OTSAJ029             INTEGER,                                   /*¥��id                        */ 
   OTSAJ030             INTEGER,                                   /*¥��id                        */       
   RESERVED1            VARCHAR2(60),                              /*�����ֶ�1                     */
   RESERVED2            VARCHAR2(60),                              /*�����ֶ�2                     */
   RESERVED3            VARCHAR2(60),                              /*�����ֶ�3                     */
   RESERVED4            VARCHAR2(60),                              /*�����ֶ�4                     */
   RESERVED5            VARCHAR2(60),				   /*�����ֶ�5                     */
   RESERVED6            VARCHAR2(60),                              /*�����ֶ�6                     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   operatebatchno       VARCHAR2(100),                             /*����*/
   constraint PK_TB_OTSAJ primary key (OTSAJ_ID)
);
--create unique index AK_TB_OTSAJ on TB_OTSAJ (OTSAJ_ID);
create sequence SEQ_TB_OTSAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAJ to public;
grant index  on TB_OTSAJ to public;
grant update on TB_OTSAJ to public; 
grant delete on TB_OTSAJ to public;  
grant insert on TB_OTSAJ to public; 
grant select on SEQ_TB_OTSAJ to public;   